# Bretools

### *Basic R and External Tools*

This is a set of useful R programs and Rscripts I started to collect during the Data Science Specialization.

### Rmdformat
Script to convert <tt>Rmd</tt> files to other formats: <tt>md</tt> (default),
<tt>html</tt>, <tt>odt</tt> or <tt>pdf</tt>. To convert to <tt>odf</tt> and 
<tt>pdf</tt> you must have <tt>pandoc</tt> installed.

##### Example
```sh
    $ Rmdformat --html analysis.Rmd
```
produces the <tt>pdf</tt> of the <tt>analysis.Rmd</tt> file.

### setlocale.R
Sys.setlocale function is platform-dependent, which means that you have to
specify different locales for different platforms. For example,
```R
    Sys.setlocale("English")
```
only works in Windows, and
```R
    Sys.setlocale("en_US")
```
works in Linux and Mac OS X, but it probably doesn't works in Windows.
For example,
```R
    setlocale("LC_ALL", "English", country="US")
```
tries to set locale for <tt>LC_ALL</tt> to <tt>English</tt>, <tt>en</tt>,
<tt>en_US</tt> and <tt>en_US.UTF-8</tt>, in this order. If the language, the
short language code and the country have the same two initial letters, then,
for example:
```R
    setlocale("LC_TIME", "Italian")
```
tries to set locale for <tt>LC_TIME</tt> to <tt>Italian</tt>, <tt>it</tt>,
<tt>it_IT</tt> and <tt>it_IT.UTF-8</tt>, in this order. If the language and the
short language code doesn't share the two initial letters then you have to
specify them explicitly, for example:
```R
    setlocale("LC_ALL", "Spanish", "es")
    setlocale("LC_ALL", "Spanish", "es", "AR")
    setlocale("LC_MESSAGES", "German", "de")
```

The function returns a string with the locale set, or an empty string is none
could be applied.
