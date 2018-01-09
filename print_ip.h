#pragma once

#include "version.h"
#include <cstdint>

#include <iostream>
#include <type_traits>
#include <vector>
#include <list>
#include <tuple>
#include <arpa/inet.h>

//! version function.
/*!
  \return int value > 0
*/
int version()
{
  return PROJECT_VERSION_PATCH;
}

//!  is_one_of meta-class.
/*!
  A basic class of is_one_of meta-function.
*/
template <typename T, typename... Args>
struct is_one_of;

//!  is_one_of meta-class.
/*!
  No parameters.
  \return false
*/
template <typename T>
struct is_one_of<T> : std::false_type {};

//!  is_one_of meta-class.
/*!
  Inputs parameter and first parameter are equal.
  \return true
*/
template <typename T, typename... Args>
struct is_one_of<T, T, Args...> : std::true_type {};

//!  is_one_of meta-class.
/*!
  Inputs parameter and first parameter are not equal.
  \return next compared inputs parameter with second parameter
*/
template <typename T, typename U, typename... Args>
struct is_one_of<T, U, Args...> : is_one_of<T, Args...> {};

//! Template print_ip taking one argument which is one of integer type and print it as ip-address (bytes sepated by dots).
/*!
  \param[in] ip an integer argument.
*/
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

//! Template print_ip taking one argument which is one of std::vector or std::list type and print it as ip-address (bytes sepated by dots).
/*!
  \param[in] ip an std::vector or std::list argument.
*/
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

//!  seq meta-class.
/*!
  Sequence meta-function.
*/
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

//!  gen_seq meta-class.
/*!
  It's stops recursion meta-function.
  \return sequence of integer numbers [K..N]
*/
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

//!  gen_seq meta-class.
/*!
  Meta-function generates sequence of integer numbers.
  \return sequence of integer numbers [0..N]
*/
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


//! Template print_tuple taking three arguments (one of these parameters is a tuple) and print it as ip-address (bytes sepated by dots).
/*!
  \param[out] os an std::basic_ostream<> argument, such as std::cout.
  \param[in] t a std::tuple argument, it's ip address.
  \param[in] seq<Is...> a metaprogramming-generated sequence of integer numbers (0..N) argument, it's according to tuple indexes.
*/
template<typename Ch, typename Tr, typename Tuple, std::size_t... Is>
void print_tuple(std::basic_ostream<Ch,Tr>& os, Tuple const& t, seq<Is...>)
{
  using swallow = int[];
  (void) swallow{0, (void(os << (Is == 0? "" : ".") << std::get<Is>(t)), 0)...};
}

//! Overloaded operator "<<" template taking two arguments (one of these parameters is a tuple) and put it to std output.
/*!
  \param[out] os an std::basic_ostream<> argument, such as std::cout.
  \param[in] t a std::tuple argument, it's ip address.
  \return std::basic_ostream<> variable
*/
template<typename Ch, typename Tr, typename... Args>
auto operator<<(std::basic_ostream<Ch, Tr>& os, std::tuple<Args...> const& t) -> std::basic_ostream<Ch, Tr>&
{
  print_tuple(os, t, gen_seq<sizeof...(Args)>());
  return os;
}

//!  is_all_of meta-class.
/*!
  A basic class of is_all_of meta-function.
*/
template <typename T, typename... Args>
struct is_all_of;

//!  is_all_of meta-class.
/*!
  No parameters.
  \return false
*/
template <typename T>
struct is_all_of<T> : std::true_type {};

//!  is_all_of meta-class.
/*!
  Inputs parameter and first parameter are not equal.
  \return false
*/
template <typename T, typename U, typename... Args>
struct is_all_of<T, U, Args...> : std::false_type {};

//!  is_all_of meta-class.
/*!
  Inputs parameter and first parameter are not equal.
  \return next compared inputs parameter with second parameter
*/
template <typename T, typename... Args>
struct is_all_of<T, T, Args...> : is_all_of<T, Args...> {};

//! Template print_ip taking one tuple-parameter.
/*!
  \param[in] ip a std::tuple argument, it's ip address.
*/
template<typename... Args>
void print_ip(std::tuple<Args...> const& ip)
{
  if(is_all_of<Args...>::value)
  {
    std::cout << ip << std::endl;
  }
}
