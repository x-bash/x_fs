# cd

A superb command to provide a more flexible cd.

## go back to subfolder

```bash
# suppose there is folder /a/b/ccc/ddd/eee/fff
cd /a/b/ccc/ddd/eee/fff
cd ...      # will goto /a/b/ccc/ddd
```

## go back to last folder in history

```bash
cd -
cd --       # go back to second latest folder in history
cd -ddd     # go back the latest folder contain ddd
cd -?       # show history
cd -/       # clear history
```

## go forward recursively for sub folder

```bash
# suppose there is folder /a/b/ccc/ddd/eee/fff
cd /a/b
cd =ff      # will goto ff
```

## go backward

```bash
# suppose there is folder /a/b/ccc/ddd/eee/fff
cd /a/b/ccc/ddd/eee/fff
cd ../cc    # will go to /a/b/ccc
```

## in short

```bash
cd /u/b     # will go to /usr/bin
```

## go with find

```bash
cd bin
```

## test table

- **centos**: bash/gawk
- **ubuntu**: dash/mawk
- **alpine**: ash/BusyBox awk
- **macOS**: zsh/nawk

| feature\env | bash5 |bash4|bash3|zsh| dash  |ash|  gawk| mawk | BusyBox awk | nawk |
|---|---|---|---|---|---|---|---|---|---|---|
|subfolder<br>`cd ...`|✔|✔|✔|✔|✔|✔|✔|✔|✔|✔|
|last folder<br>`cd -`|✔|✔|✔|✔|✔|✔|✔|✔|✔|✔|
|latest folder contain ddd<br>`cd -ddd`||
| show history<br>`cd -?`|✔|✔|✔|✘|✔|✔|✔|✔|✔|✔|
| clear history<br>`cd -/`|||||
| go forward<br>`cd =ff` ||
|go backward<br>`cd ../cc`||
|in short<br>`cd /u/b`||||✘|
|go with find<br>`cd bin`||