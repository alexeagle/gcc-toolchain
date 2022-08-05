# Toolchain build

## Sysroot

As GCC (and other toolchains) see it, the sysroot is the logical root directory for headers and
libraries.

This subdirectory contains the definitions and scripts to build sysroots for x86_64, armv7 and
aarch64 (aka arm64 and armv8).

### Building the sysroots

Use the `build.sh` script to build the sysroots using Docker. The current restriction is
that the container must run in x86_64. The sysroots for other architectures are built using
cross-compilation from x86_64.

#### Using the build script

You can use the `build_all.sh` script or call `build.sh` individually:

```shell
./toolchain/build/build.sh x86_64 ./toolchain/build base
./toolchain/build/build.sh armv7 ./toolchain/build base
./toolchain/build/build.sh aarch64 ./toolchain/build base
```

#### Variants

If you want to build a sysroot containing extra libraries, you can build a variant. E.g. the X11:

```shell
./toolchain/build/build.sh x86_64 ./toolchain/build X11
```
