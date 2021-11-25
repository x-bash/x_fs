# cd

A superb command to provide a more flexible cd.

## go back to subfolder

```bash
# suppose there is folder /a/b/ccc/ddd/eee/fff
cd /a/b/ccc/ddd/eee/fff
cd ...      # will goto /a/b/ccc/ddd
```

## go back to last folder


```bash
cd -
cd --
cd -ddd
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

## With short alias

```bash
cd /u/b     # will go to /usr/bin
```


## go with find

```bash
cd bin
```


