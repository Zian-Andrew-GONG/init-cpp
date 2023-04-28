#include <gtest/gtest.h>
#include "interface.h"

TEST(basic, add) {
    using namespace initcpp;
    int res = add(1, 2);
    EXPECT_EQ(3, res);
}