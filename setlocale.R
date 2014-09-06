# Platform independent function to change the current locale.
# Portable Sys.setlocale replacement. For example,
#
#   setlocale("LC_ALL", "English", country="US")
#
# tries to set locale for "LC_ALL" to "English", "en", "en_US" and
# "en_US.UTF-8", in this order. If the language, the short language code and the
# country have the same two initial letters, then, for example:
#
#    setlocale("LC_TIME", "Italian")
#
# tries to set locale for "LC_TIME" to "Italian", "it", "it_IT" and
# "it_IT.UTF-8", in this order. If the language and the short language code
# doesn't share the two initial letters then you have to specify them
# explicitly, for example:
#
#    setlocale("LC_ALL", "Spanish", "es")
#    setlocale("LC_ALL", "Spanish", "es", "AR")
#    setlocale("LC_MESSAGES", "German", "de")
#
# The function returns a string with the locale set, or an empty string is none
# could be applied.

setlocale <- function(category, language, lang=NULL,
                      country=NULL, encoding="UTF-8") {
    suppressWarnings(
        if(Sys.setlocale(category, language) == "") {
            locale <- ifelse(is.null(lang),
                             tolower(substr(language, 1, 2)),
                             lang)
            if(Sys.setlocale(category, locale) == "") {
                country <- ifelse(is.null(country),
                                  toupper(locale),
                                  country)
                locale <- paste(locale, "_", country, sep="")
                if(Sys.setlocale(category, locale) == "") {
                    locale <- paste(locale, ".", encoding, sep="")
                    Sys.setlocale(category, locale)
                }
            }
        }
    )
}
