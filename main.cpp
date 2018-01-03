#include "print_ip.h"

int main()
{
  //int8
  std::uint8_t ip_int8 = 253;
  print_ip(ip_int8);


  //int16
  std::uint16_t ip_int16 = 192 + (168 << 8);
  print_ip(ip_int16);


  //int32
  std::int32_t ip_int32 = 0;
  inet_pton(AF_INET, "192.168.0.1", &ip_int32);
  print_ip(ip_int32);


  //uint64_t
  union int64union
  {
    std::uint32_t int32[2];
    std::uint64_t int64;
  };
  std::uint32_t ip4_hi = 192 + (168 << 8) + (100 << 16) + (15 << 24);
  std::uint32_t ip4_lo = 172 + (16 << 8) + (17 << 16) + (24 << 24);
  int64union ip4_union;
  ip4_union.int32[0] = ip4_hi;
  ip4_union.int32[1] = ip4_lo;
  std::int64_t ip_int64 = ip4_union.int64;
  print_ip(ip_int64);


  //vector<int>
  std::vector<int> v_int = {1, 2, 3, 4};
  print_ip(v_int);


  //vector<string>
  std::vector<std::string> v_string = {"1", "2", "3", "4", "5", "6"};
  print_ip(v_string);


  //list<int>
  std::list<int> l_int = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
  print_ip(l_int);

  //list<int>
  std::list<std::string> s_int = {"10", "20", "30", "40", "50"};
  print_ip(l_int);


  //list<string>
  std::list<std::string> l_string = {"11", "22", "33", "44", "55", "66", "77"};
  print_ip(l_string);


  //tuple
  std::tuple<int, int, int, int> tuple_1{85, 118, 79, 56};
  print_ip(tuple_1);


  //tuple
  std::tuple<int> tuple_2{11};
  print_ip(tuple_2);

  //tuple
  std::tuple<std::string, std::string, std::string, std::string> tuple_3{"185", "108", "179", "156"};
  print_ip(tuple_3);

  //tuple
  std::tuple<std::string> tuple_4{"114"};
  print_ip(tuple_4);

  //wrong tuple
  std::tuple<std::string, int, int, int> wrong_tuple{"185", 195, 66, 99};
  print_ip(wrong_tuple);

  //wrong tuple
  std::tuple<int, std::string, int, int, int> wrong_tuple_2{11, "185", 22, 33, 44};
  print_ip(wrong_tuple_2);


  return 0;
}
