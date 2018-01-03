#pragma once

#include "version.h"
#include <cstdint>

#include <iostream>
#include <type_traits>
#include <vector>
#include <list>
#include <tuple>
#include <arpa/inet.h>

int version();


template <typename T, typename... Args>
struct is_one_of;

template <typename T>
struct is_one_of<T> : std::false_type {};

template <typename T, typename... Args>
struct is_one_of<T, T, Args...> : std::true_type {};

template <typename T, typename U, typename... Args>
struct is_one_of<T, U, Args...> : is_one_of<T, Args...> {};

template <typename T>
void print_ip(const T& ip)
{
  const int byte_size = 8;
  if(is_one_of<T, std::int8_t, std::uint8_t, std::int16_t, std::uint16_t, std::int32_t, std::uint32_t, std::int64_t, std::uint64_t>::value)
  {
    std::size_t bytes = sizeof(T);
    for(std::size_t i = 0; i < bytes; i++)
    {
      std::cout << ((ip >> (i * byte_size)) & 0xFF);
      if(i != ((sizeof(T) - 1)))
        std::cout << ".";
    }
    std::cout << std::endl;
  }
}

template<template<typename, typename> class T, typename U>
void print_ip(const T<U, std::allocator<U>>& ip)
{
  if(is_one_of<T<U, std::allocator<U>>, std::vector<U>, std::list<U>>::value)
  {
    for(auto it = ip.cbegin(); it != ip.cend(); it++)
    {
      std::cout << *it;
      if(it != --ip.cend())
        std::cout << ".";
    }
    std::cout << std::endl;
  }
}

template<std::size_t... Is>
struct seq
{
//    seq()
//    {
//      std::cout << "ctor seq: ";
//      using swallow = int[];
//      swallow{(std::cout << Is, 0)...};
//      std::cout << std::endl;
//    }
};

template<std::size_t N, std::size_t... Is>
struct gen_seq : gen_seq<N-1, N-1, Is...>
{
//    gen_seq()
//    {
//      std::cout << "ctor gen_seq N-1=" << N-1 << ": ";
//      using swallow = int[];
//      swallow{(std::cout << Is, 0)...};
//      std::cout << std::endl;
//    }
};

template<std::size_t... Is>
struct gen_seq<0, Is...> : seq<Is...>
{
//    gen_seq<0, Is...>()
//    {
//      std::cout << "ctor gen_seq<0, Is...>: ";
//      using swallow = int[];
//      swallow{(std::cout << Is, 0)...};
//      std::cout << std::endl;
//    }
};


template<typename Ch, typename Tr, typename Tuple, std::size_t... Is>
void print_tuple(std::basic_ostream<Ch,Tr>& os, Tuple const& t, seq<Is...>)
{
  using swallow = int[];
  (void) swallow{0, (void(os << (Is == 0? "" : ".") << std::get<Is>(t)), 0)...};
}

template<typename Ch, typename Tr, typename... Args>
auto operator<<(std::basic_ostream<Ch, Tr>& os, std::tuple<Args...> const& t) -> std::basic_ostream<Ch, Tr>&
{
  print_tuple(os, t, gen_seq<sizeof...(Args)>());
  return os;
}


template <typename T, typename... Args>
struct is_all_of;

template <typename T>
struct is_all_of<T> : std::true_type {};

template <typename T, typename U, typename... Args>
struct is_all_of<T, U, Args...> : std::false_type {};

template <typename T, typename... Args>
struct is_all_of<T, T, Args...> : is_all_of<T, Args...> {};

template<typename... Args>
bool check_is_all_of(std::tuple<Args...> const&)
{
  return is_all_of<Args...>::value;
}


template<typename... Args>
void print_ip(std::tuple<Args...> const& ip)
{
  if(check_is_all_of(ip))
  {
    std::cout << ip << std::endl;
  }
}
