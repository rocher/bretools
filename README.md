# Bretools

### *Basic R and External Tools*

This is a set of useful R programs and Rscripts I started to collect during the Data Science Specialization.

### Rmdformat
Script to convert Rmd files to other formats: md (default), html, odt or pdf.
To convert to odf and pdf you must have 'pandoc' installed.

### setlocale.R
Sys.setlocale function is platform-dependent, which means that you have to
specify different locales for different platforms. For example,

    <code>Sys.setlocale("English")</code>

only works in Windows, and

    <code>Sys.setlocale("en_US")</code> works in Linux and Mac OS X, but it

probably doesn't works in Windows.
For example,

    <code>setlocale("LC_ALL", "English", country="US")</code>

tries to set locale for <tt>LC_ALL</tt> to <tt>English</tt>, <tt>en</tt>,
<tt>en_US</tt> and <tt>en_US.UTF-8</tt>, in this order. If the language, the
short language code and the country have the same two initial letters, then,
for example:

    <code>setlocale("LC_TIME", "Italian")</code>

tries to set locale for <tt>LC_TIME</tt> to <tt>Italian<tt>, <tt>it</tt>,
<tt>it_IT</tt> and <tt>it_IT.UTF-8</tt>, in this order. If the language and the
short language code doesn't share the two initial letters then you have to
specify them explicitly, for example:

    </code>setlocale("LC_ALL", "Spanish", "es")</code>
    <code>setlocale("LC_ALL", "Spanish", "es", "AR")</code>
    <code>setlocale("LC_MESSAGES", "German", "de")</code>

The function returns a string with the locale set, or an empty string is none
could be applied.
