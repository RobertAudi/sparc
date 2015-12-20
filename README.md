Sparc: Sparklines for your shell ▄ ▇ ▂ ▁ ▅ ▃
============================================

Installation
------------

### OS X

```sh
$ brew tap RobertAudi/formulae http://0x49.0x2a.xyz/RobertAudi/homebrew-formulae.git
$ brew install sparc
```

### Manually

```sh
$ git clone --depth 1 http://0x49.0x2a.xyz/RobertAudi/sparc.git
$ cd sparc
$ make install
```

Usage
-----

```sh
$ sparc  1 2 0.4 0.1 1.3 0.7
▄ ▇ ▂ ▁ ▅ ▃
$ sparkl 1 2 0.4 0.1 1.3 0.7
▄▉▂▁▆▃
```

```sh
$ seq 0.0 0.5 100.0 | shuf -n 15 - | xargs sparc
▁ ▇ ▆ ▂ ▂ ▂ ▄ ▇ ▆ ▂ ▃ ▄ ▇ ▅ ▃
$ seq 0.0 0.5 100.0 | shuf -n 15 - | xargs sparkl
█▃▉▅▆▄▄▂▄▁▇▁▃▃▆
```

```sh
$ find . -type f -print | xargs wc -m | head -n -1 | awk '{print $1}' | shuf - | xargs sparc
$ find . -type f -print | xargs wc -m | head -n -1 | awk '{print $1}' | shuf - | xargs sparkl
```

Credits
-------

- [Spark][spark] — [GitHub][gh-spark]
- [Sparc in C][sparc.c]
- [IOCCC 2013 Winner: Best sparkling utility][ioccc]

[spark]: http://zachholman.com/spark/
[gh-spark]: https://github.com/holman/spark
[sparc.c]: https://gist.github.com/vmg/1368661
[ioccc]: http://www.ioccc.org/2013/dlowe/hint.html
