# CV template

Simple but effective CV template in Typst

Tested on `typst 0.13.0`.

## Install fonts

Download the official FontAwesome fonts:

[https://fontawesome.com/download](https://fontawesome.com/download)

I use the font Helvetica that you may download too but you can use
any other font installed on your system.

Extract the archive.

### Windows and Linux

Right-click on the font files (`.otf` or `.ttf`) and install fonts.

### Windows Linux Subsystem (WSL)

```
cd <path to your fonts>
mkdir -p /usr/share/fonts/truetype/
sudo install -m644 '<your_font>.ttf' /usr/share/fonts/truetype/
```

### Build

Build PDF document:

```
typst compile main.typ
```

Watch changes while modifying the code:

```
typst watch main.typ
```
