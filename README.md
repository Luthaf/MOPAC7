# CMake based build for MOPAC 7

Get it, build it:

```bash
git clone https://github.com/luthaf/MOPAC7
cd MOPAC7
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=<installation prefix> -DCMAKE_BUILD_TYPE=release ..
make
```

Install with `make install` or just copy the `mopac` binary where you want.

## LICENSE

I don't have the rights on this code, the original website have placed it under
the public domain (see http://openmopac.net/Downloads/Downloads.html)
