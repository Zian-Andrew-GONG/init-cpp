#include "Hello.h"
#include "interface.h"
#include "fmt/color.h"
#include "spdlog/spdlog.h"

int main(int argc, char *argv[])
{
    Hello hi;
    hi.print();
    fmt::print(fg(fmt::terminal_color::cyan), "Hello!\n");
    spdlog::info("hello, add(1, 1) returns {}", initcpp::add(1, 1));
    return 0;
}