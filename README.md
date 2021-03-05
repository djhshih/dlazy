# dlazy

Execute a directory of scripts lazily.


# Installation

```
make install
```


# Usage

You can prepare a directory of scripts to execute either yourself, or using
`djobs`.

`djobs` take a file containing a list of input files (e.g. `samples.txt`),
following by a command that takes a single input file (e.g. `wc -l`).

```
djobs samples.txt wc -l
```

For each input in `samples.txt`, a job script will be created for it in `job`.

Now, you can execute the jobs by:

```
dlazy job
```

The log files (`.stdout` and `.stderr`), as well as
the return code file (`.rc`), will be written to the `log` directory.

Optionally, if you have GNU `parallel` available, you can also execute the
jobs locally in parallel:

```
pdlazy job -j 2
```

For a demo, see the `test` directory, which may be run with `make`.

