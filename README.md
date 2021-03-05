# dlazy

Execute a directory of jobs lazily.

**Problem**: You have many long-running jobs to run locally,
but these jobs may fail unexpected or be interrupted.
You want to easily run jobs that have not previously completed successfully.

`dlazy` executes each script job in a directory, and repeated calls
to `dlazy` will only re-executes jobs that have not completed successfully.


# Installation

```
make install
```

You can also install the programs locally in places such as `~/local`.

```
make install DESTDIR=~/local
```

In this case, you should ensure that `~/local/bin` is in your PATH:

```
export PATH+=:~/local/bin
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

If you wish to re-execute a job, you can simply delete the corresponding
`.rc` file before you run `dlazy` again.


Optionally, if you have GNU `parallel` available, you can also execute the
jobs locally in parallel:

```
pdlazy job -j 2
```

For a demo, see the `test` directory, which may be run with `make`.

