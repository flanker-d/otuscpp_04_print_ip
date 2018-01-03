#define BOOST_TEST_MODULE funcs_tests

#include "version.h"
#include "print_ip.h"
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(funcs_tests)

BOOST_AUTO_TEST_CASE(test_valid_version)
{
  BOOST_CHECK(version() > 0);
}

BOOST_AUTO_TEST_CASE(test_is_all_of)
{
  std::tuple<int, int, int, int> tuple_1{85, 118, 79, 56};
  BOOST_CHECK_EQUAL(check_is_all_of(tuple_1), true);

  std::tuple<int> tuple_2{11};
  BOOST_CHECK_EQUAL(check_is_all_of(tuple_2), true);

  std::tuple<std::string, std::string, std::string, std::string> tuple_3{"185", "108", "179", "156"};
  BOOST_CHECK_EQUAL(check_is_all_of(tuple_3), true);

  std::tuple<std::string> tuple_4{"114"};
  BOOST_CHECK_EQUAL(check_is_all_of(tuple_4), true);

  std::tuple<std::string, int, int, int> wrong_tuple{"185", 195, 66, 99};
  BOOST_CHECK_EQUAL(check_is_all_of(wrong_tuple), false);

  std::tuple<int, std::string, int, int, int> wrong_tuple_2{11, "185", 22, 33, 44};
  BOOST_CHECK_EQUAL(check_is_all_of(wrong_tuple_2), false);
}

BOOST_AUTO_TEST_SUITE_END()
