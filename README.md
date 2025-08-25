# NAME

Alien::Bit - Find or install the Bit library

# VERSION

version 0.03

# SYNOPSIS

Installs the Bit library, used to manipulate bitsets and their packed containers

# DESCRIPTION

This distribution provides the librry Bit so that it can be used by 
other Perl distributions that are on CPAN.  It will download Bit from Github
and will build the (static and dynamic) versions of the library for use by other
Perl modules.

# SEE ALSO

- [Bit](https://github.com/chrisarg/Bit)

    Bit is a high-performance, uncompressed bitset implementation in C, optimized 
    for modern architectures. The library provides an efficient way to create, 
    manipulate, and query bitsets with a focus on performance and memory alignment. 
    The API and the interface is largely based on David Hanson's Bit\_T library 
    discussed in Chapter 13 of "C Interfaces and Implementations", 
    Addison-Wesley ISBN 0-201-49841-3 extended to incorporate additional operations 
    (such as counts on unions/differences/intersections of sets), 
    fast population counts using the libpocnt library and GPU operations for packed 
    containers of (collections) of Bit(sets).

- [libpopcnt](https://github.com/kimwalisch/libpopcnt)

    libpopcnt.h is a header-only C/C++ library for counting the number of 1 bits 
    (bit population count) in an array as quickly as possible using specialized 
    CPU instructions i.e. POPCNT, AVX2, AVX512, NEON, SVE. libpopcnt.h has been 
    tested successfully using the GCC, Clang and MSVC compilers.

- [Alien](https://metacpan.org/pod/Alien)

    Documentation on the Alien concept itself.

- [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase)

    The base class for this Alien.

- [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien%3A%3ABuild%3A%3AManual%3A%3AAlienUser)

    Detailed manual for users of Alien classes.

# AUTHOR

Christos Argyropoulos <chrisarg@gmail.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2025 by Christos Argyropoulos.

This is distributed under the BSD-2 license
