# PANDORA.XU4

This project builds the PND file for the [XU4 Ultima IV Recreation project](http://xu4.sourceforge.net). The PND file can be used on the [OpenPandora](https://pyra-handheld.com/boards/pages/pandora/).

XU4 needs the MS-DOS binaries of the original Ultima IV by Origin. For legal reasons, the original game data is not included in this PND, but, as Ultima IV is legally optainable, it downloads the data on the first start.

# Build the PND file

You will need `mksquashfs`. Install it using the package manager of your choice.

```
./build.sh
```

This will create the `pandora.xu4.thred.pnd` file.

# Compile XU4 on the Pandora

## Prepare the environment

You will need an [OpenPandora](https://pyra-handheld.com/boards/pages/pandora/) for this.

Install the [C/C++ Development Tools](http://repo.openpandora.org/?page=detail&app=cdevtools.freamon.40n8e). Placing it on an ext2-formated card is highly recommended (and is required for `addipk` to work).

Make sure, your Pandora is connected to the internet. Enable the SSH daemon by using the configuration tool.

Connect to your Pandora with your user (because it's more fun to use your computer keyboard):

```
ssh <YOU>@<ADDRESS>
```

Prepare the compilation target! Most app will compile to `/usr/local`, but that's on your NAND memory (on the CPU), so let's move the `/usr/local` to the `SDCARD`:

```
mkdir /media/SDCARD/UsrLocal
sudo ln -s /media/SDCARD/UsrLocal/ /usr/local
```

Make yourself a place on the `SDCARD`:

```
mkdir /media/SDCARD/home
```

Now, start the Development Tools:

```
/usr/pandora/scripts/pnd_run.sh -p /media/SDCARD/pandora/menu/cdevtools.freamon.40n8e.pnd -e "setup/start.sh"
```

Provide the password and swith to your new home:

```
cd /media/SDCARD/home
```

## Download the source

```
svn checkout svn://svn.code.sf.net/p/xu4/code/trunk xu4-code
```

Make sure, your `SDCARD` is ext-formatted!

## Prepare the compilation

Edit the Makefile and add the following to the FEATURES to optimize for the ARMv7:

```
-O3 -march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp -fassociative-math -funsafe-math-optimizations -ffast-math -pipe
```

And disable the `DEBUGCXXFLAGS`.

## Compile it

Before you compile it, clean your `/media/SDCARD/UsrLocal`. You will have to copy the binary and data files.

Now, you need to be patient:

```
cd xu4-code/u4/src

make
```

and finally

```
make install
```

copy `/media/SDCARD/UsrLocal` to `src/u4`.

# CrossCompile XU4 with the [OpenPandora Toolchain](http://git.openpandora.org/cgi-bin/gitweb.cgi?p=pandora-misc.git;a=tree;f=sdk_installer)

## Prepare the Toolchain

Download the file [openpandora_toolchain.sh](http://git.openpandora.org/cgi-bin/gitweb.cgi?p=pandora-misc.git;a=blob_plain;f=sdk_installer/openpandora_toolchain.sh;hb=HEAD).

Fix the OPKG download location:

Locate the line
```
wget -O $TMPDIR/$OPKG_ARCHIVE http://opkg.googlecode.com/files/$OPKG_ARCHIVE
```
and replace it with
```
wget -O $TMPDIR/$OPKG_ARCHIVE https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/opkg/$OPKG_ARCHIVE
```

Change the file permission to allow execution:
```
chmod a+x sdk_installer_openpandora_toolchain.sh
```
and launch it:
```
./sdk_installer_openpandora_toolchain.sh
```
It will take it's time.

After it has finished, add it to your path. Edit the `.bashrc` file and add the following:
```
export PNDSDK="/home/thred/pandora-dev/arm-2011.09"
export PATH="${PATH}:${PNDSDK}/bin"
```
Don't forget to restart your console.

## Download the source

You can find the source on the [XU4 Project Pages](https://sourceforge.net/projects/xu4/).
```
svn checkout https://svn.code.sf.net/p/xu4/code/trunk xu4-code
```

... TBD
