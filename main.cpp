#include "print_ip.h"

int main()
{
  //char
  char ip_char = -1;
  print_ip(ip_char);

  //short
  short ip_short = 0;
  print_ip(ip_short);

  //int
  int ip_int = 2130706433;
  print_ip(ip_int);

  //long
  long ip_long = 8875824491850138409;
  print_ip(ip_long);

  //string
  std::string ip_string = "192.168.0.1";
  print_ip(ip_string);

  //vector<int>
  std::vector<int> v_int = {1, 2, 3, 4};
  print_ip(v_int);

  //list<std::string>
  std::list<std::string> s_int = {"10", "20", "30", "40", "50"};
  print_ip(s_int);

  //tuple
  std::tuple<int, int, int, int> tuple_1{85, 118, 79, 56};
  print_ip(tuple_1);

  //wrong tuple
  //std::tuple<std::string, int, int, int> wrong_tuple{"185", 195, 66, 99};
  //print_ip(wrong_tuple);

  //wrong tuple
  //std::tuple<int, std::string, int, int, int> wrong_tuple_2{11, "185", 22, 33, 44};
  //print_ip(wrong_tuple_2);

  return 0;
}
