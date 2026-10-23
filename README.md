# kaakelit: use Tiled maps in your game

<!--
Copyright 2026 Oatbelly <oatbelly@tutamail.com>
SPDX-License-Identifier: Apache-2.0
-->

> [!WARNING]
> This library is a work in progress and not ready for use.

kaakelit is a C library for reading [Tiled](https://www.mapeditor.org/) tilemaps and generating data structures that can be used in C/C++ applications, such as games.

> [!IMPORTANT]
> Only JSON tilemaps are supported. However, you can work with XML tilemaps in Tiled and export them as JSON when you want to use them with kaakelit.

## License

This project is licensed under Apache License 2.0.

## Building

### Dependencies

This project requires at least the following to build:

* A C compiler that conforms to the C23 standard or greater
* CMake 4.4 or later
* A build system supported by CMake (GNU Make, Ninja etc.)

Additionally, tests require at least the following to build:

* A C++ compiler that conforms to the C++17 standard or greater
* GoogleTest

### Configure options

* `KAAKELIT_BUILD_TESTS`: enable/disable building tests

### Configure and build

To configure and build this project, you can run this set of commands:

```sh
  cmake -B build -S . \
    -DCMAKE_C_STANDARD=23 \
    -DCMAKE_CXX_STANDARD=17 \
    # Any other arguments here, e.g. -DKAAKELIT_BUILD_TESTS=OFF
  cmake --build build
```

### CMake presets

This project includes CMake presets for common build types (debug and release). You can use `cmake --list-presets` to see all available presets.

> [!IMPORTANT]
> The included presets are for building with Ninja and GCC only. Check `CMakePresets.json` for the exact configurations.

For example, to configure and build this project with Ninja, GCC and debug symbols, you can run this command:

```sh
  cmake --build --preset debug
```

## Running tests

You can run tests with this command:

```sh
  ctest --test-dir build
```

> [!NOTE]
> If you configured this project using one of the CMake presets, the build directory is `build/<preset-name>/` instead of `build/`.

You might want to use the workflow presets which run each step (configure, build and test) with one command. You can use `cmake --workflow --list-presets` to see all available workflow presets.

For example, to configure, build and test this project with Ninja, GCC and debug symbols, you can run this command:

```sh
  cmake --workflow --preset debug
```

## Acknowledgements

This project was built by following the practices in the [Beman library template](https://github.com/bemanproject/exemplar).
