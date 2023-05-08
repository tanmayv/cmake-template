#include <boost/program_options.hpp>
#include <iostream>
#include <vector>
#include <string>

namespace po = boost::program_options;

int main(int argc, char** argv) {
  int opt;
  po::options_description desc("Allowed options");
  desc.add_options()
    ("help", "produce help message")
    ("optimization", po::value<int>(&opt)->default_value(10), 
     "optimization level")
    ("include-path,I", po::value<std::vector<std::string>>(), 
     "include path")
    ("input-file", po::value<std::vector<std::string>>(), "input file");

  po::variables_map vm;
  po::store(po::parse_command_line(argc, argv, desc), vm);
  po::notify(vm);

  if (vm.count("optimization")) {
    std::cout << "Optimization level was set to " 
 << vm["optimization"].as<int>() << ".\n";
} else {
    std::cout << "Optimization level was not set.\n";
}
  if (vm.count("input-file")) {
    auto input = vm["input-file"].as<std::vector<std::string>>();
    for (const std::string i: input) {
      std::cout << "Input file was set to " << i << std::endl;
    }
  }
  return 0;
}
