// Coypright 2026 Oatbelly <oatbelly@tutamail.com>
// SPDX-License-Identifier: Apache-2.0

#include <gtest/gtest.h>

#include <kaakelit/add.h>

TEST(AddTest, BasicAddition) { EXPECT_EQ(kaakelit_add(2, 3), 5); }
