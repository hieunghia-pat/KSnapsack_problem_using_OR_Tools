#include <fstream>
#include <iostream>
#include "ortools/algorithms/knapsack_solver.h"
#include <vector>
#include <tuple>
#include <filesystem>
#include <string>
#include <sstream>
#include <ctime>
#include <experimental/random>
#include <memory>
#include <boost/format.hpp>

namespace fs = std::filesystem;
namespace opr = operations_research;

std::tuple<std::vector<std::int64_t>, std::vector<std::int64_t>, std::int64_t, bool> get_solution(
                                                    std::vector<std::vector<std::int64_t>> const& weights, 
                                                    std::vector<std::int64_t> const& values, 
                                                    std::vector<std::int64_t> const& capacities, std::int8_t limit_time)
{
    std::unique_ptr<opr::KnapsackSolver> solver = std::make_unique<opr::KnapsackSolver>(
        opr::KnapsackSolver::KNAPSACK_MULTIDIMENSION_BRANCH_AND_BOUND_SOLVER, 
        "KNapSackSolver"
    );

    solver->set_time_limit(limit_time);
    solver->Init(values, weights, capacities);

    std::time_t startTime = std::time(nullptr);
    std::int64_t total_value = solver->Solve();
    std::time_t endTime = std::time(nullptr);
    std::cout << "Time consuming: " << endTime - startTime << "s." << std::endl;
    
    std::vector<std::int64_t> packed_items;
    for (std::size_t i = 0; i < values.size(); i++)
    {
        if (solver->BestSolutionContains(i))
        {
            packed_items.push_back(i);
        }
    }

    std::vector<std::int64_t> packed_weights;
    for (auto const& item: packed_items)
    {
        packed_weights.push_back(weights[0][item]);
    }

    return std::make_tuple<std::vector<std::int64_t>, std::vector<std::int64_t>, std::int64_t, bool>
                            (std::move(packed_items), std::move(packed_weights), std::move(total_value), std::move(solver->IsSolutionOptimal()));

}

std::vector<std::string> split(std::string const& string, char delim)
{
    std::istringstream sstream {string};
    std::vector<std::string> tokens;
    std::string tmp_string;
    while (std::getline(sstream, tmp_string, delim))
    {
        tokens.push_back(std::move(tmp_string));
    }

    return std::move(tokens);
}

int main(int argc, char* argv[])
{
    std::string path { argv[1] };

    std::vector<std::string> ncases {"n00050", "n00100", /*"n00200",*/ "n00500", "n01000", "n00050", "n02000", "n05000", "n10000"};
    std::vector<std::string> subcases {"R01000", "R10000"};
    // std::vector<int> limit_times { 1, 3, 60, 120, 180};
    std::vector<int> limit_times { 1, 3, 60};

    for (auto const& ncase : ncases)
    {
        for (auto const& subcase: subcases)
        {
            fs::path parent_path(fs::path(path) / fs::path(ncase) / fs::path(subcase));
            fs::directory_iterator files(parent_path);
            
            for (auto& limit_time: limit_times)
            {
                fs::path file_name = fs::begin(files)->path();
                
                std::string path = file_name.string();

                // split the path to get the tree of directory
                std::vector<std::string> tokens = split(path, '/');

                // create directory for containing solutions
                fs::path out_path { fs::current_path() / fs::path("..") };
                for (auto token = tokens.begin()+5; token != tokens.end()-1; token++)
                {
                    out_path /= fs::path(token->data());
                }
                if (!fs::directory_entry(out_path).exists()) 
                    fs::create_directories(out_path);
                std::string filename = split(tokens.back(), '.')[0];
                out_path /= (boost::format{"%1%_%2%s.txt"} % filename % limit_time).str();

                if (fs::directory_entry(out_path).exists())
                    continue;

                std::ifstream in_file(path, std::ios_base::in);

                std::vector<std::vector<std::int64_t>> weights(1);
                std::vector<std::int64_t> values;

                std::int16_t n;
                std::vector<std::int64_t> capacities(1);

                std::cout << "Loading data ..." << std::endl;
                
                in_file >> n >>  capacities[0];
                for (std::int16_t id = 0; id < n; id++)
                {
                    std::int16_t value, weight;
                    in_file >> value >> weight;
                    values.push_back(value);
                    weights[0].push_back(weight);
                }

                std::vector<std::int64_t> packed_items;
                std::vector<std::int64_t> packed_weights;
                std::int64_t total_value;
                bool isOptimal;

                std::cout << "Done." << std::endl;

                std::cout << "Get solution for " << path << " ..." << std::endl;

                std::tie(packed_items, packed_weights, total_value, isOptimal) = get_solution(weights, values, capacities, limit_time);

                std::int64_t total_weight = std::accumulate(packed_weights.begin(), packed_weights.end(), std::int64_t(0));

                std::cout << "Saving to " << out_path.string() << " ..." << std::endl;

                std::ofstream out_file(out_path.string(), std::ios_base::out);

                out_file << n << std::endl;
                out_file << capacities[0] << std::endl;

                std::ostringstream osstream;
                std::move(packed_items.begin(), packed_items.end()-1, std::ostream_iterator<int>(osstream, ", "));

                osstream << std::move(packed_items.back());
                out_file << osstream.str() << std::endl;

                std::move(packed_weights.begin(), packed_weights.end()-1, std::ostream_iterator<int>(osstream, ", "));
                osstream << std::move(packed_weights.back());
                out_file << osstream.str() << std::endl;

                out_file << total_value << std::endl;
                out_file << total_weight << std::endl;
                out_file << isOptimal << std::endl;
                
                out_file.close();
                std::cout << std::string(20, '+') << std::endl;
            }
            
        }
    }

    return 0;
}