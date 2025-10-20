# NAME

Alien::Bit - Find or install the Bit library

# VERSION

version 0.08

# SYNOPSIS

    use Alien::Bit;
    use Alien qw( Alien::Bit );

    # Get compiler flags for XS/C compilation
    my $cflags = Alien::Bit->cflags;
    # Returns: path to include directory

    # Get linker flags 
    my $libs = Alien::Bit->libs;
    # Returns: the linker flags to link to the Bit library statically

    # For FFI::Platypus usage
    use FFI::Platypus;
    my $ffi = FFI::Platypus->new( api => 2 );
    $ffi->lib(Alien::Bit->dynamic_libs);

Installs the Bit library, used to manipulate bitsets and their packed containers

# DESCRIPTION

This distribution provides the library `Bit` so that it can be used by 
other Perl distributions that are on CPAN.  It will download `Bit` from Github
and will build the (static and dynamic) versions of the library for use by other
Perl modules.

# SEE ALSO

- [Bit::Set](https://metacpan.org/pod/Bit::Set)

    This module provides a procedural Perl interface to the C library [Bit](https://github.com/chrisarg/Bit),
    for creating and manipulating bitsets. It uses `FFI::Platypus` to wrap the
    C functions and `Alien::Bit` to locate and link to the C library.

- [Bit::Set::DB](https://metacpan.org/pod/Bit::Set::DB)

    This module provides a procedural Perl interface to the C library `Bit`,
    for creating and manipulating containers of bitsets (BitDB). It uses
    `FFI::Platypus` to wrap the C functions and `Alien::Bit` to locate and link
    to the C library. The main purpose of this library is to provide multithreaded
    and hardware accelerated (e.g. GPU) versions of container operations e.g. forming
    the population count of the intersection of two containers of bitsets.

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

- [Bit::Fast](https://metacpan.org/pod/Bit::Fast)

    Bit::Fast - A set of fast bit manipulation routines. It provides a population
    count routine in Perl. In platforms with builtin popcount routines, it will
    use them for better performance. Otherwise, it uses a tree-of-adders
    algorithm, that is based entirely on bitmasks and shift operations. This is
    likely to be slower than the Wilks Wheeler Gill algorithm in platforms that
    have fast 64 bit multiplication operations.

- [Bit::Vector](https://metacpan.org/pod/Bit::Vector)

    Efficient bit vector, set of integers and "big int" math library. It is a very
    complete implementation of a bit vector with a different interface than Bit. 
    It provides many more operations that the implementation of Bit does. 

- [Algorithm::BitVector](https://metacpan.org/pod/Algorithm::BitVector)

    A memory efficient packed representation of arbitrary sized bit arrays and for 
    logical and arithmetic operations on such arrays.

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
