#include <gtest/gtest.h>
#include "Hello.h"

TEST(basic, add) {
    int res = add(1, 2);
    EXPECT_EQ(3, res);
}