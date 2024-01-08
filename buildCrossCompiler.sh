#To update script, change package version numbers

#Sets build paths
#NOTE: All directories other than $PREFIX are temporary and only needed during the build process
export PREFIX="/usr/local/i686elfgcc"
export TARGET=i686-elf

#TEMPORARILY adds directory to PATH environment variable; To add it permanently, modify the .bashrc file in $HOME
export PATH="$PREFIX/bin:$PATH"

#Downloads binutils.tar.gz from the official repository, extracts and builds
mkdir /tmp/src
cd /tmp/src
curl -O http://ftp.gnu.org/gnu/binutils/binutils-2.41.tar.gz
tar xf binutils-2.41.tar.gz
mkdir binutils-build
cd binutils-build

../binutils-2.41/configure --target=$TARGET --enable-interwork --with-sysroot --enable-multilib --disable-nls --disable-werror --prefix=$PREFIX 2>&1 | tee configure.log

sudo make all install 2>&1 | tee make.log

#Downloads gcc.tar.gz from the official repository, extracts and builds
cd /tmp/src
curl -O https://ftp.gnu.org/gnu/gcc/gcc-13.2.0/gcc-13.2.0.tar.gz
tar xf gcc-13.2.0.tar.gz
mkdir gcc-build
cd gcc-build

../gcc-13.2.0/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --disable-libssp --enable-language=c,c++ --without-headers

sudo make all-gcc
sudo make all-target-libgcc
sudo make install-gcc
sudo make install-target-libgcc

ls $PREFIX/bin
