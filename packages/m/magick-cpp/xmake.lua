package("magick-cpp")
    set_description("This is Magick++, the object-oriented C++ API to the ImageMagick")

    add_urls("https://github.com/ImageMagick/ImageMagick.git")
    add_versions("v7.1.1", "8876f135a90ba2e1d5621a3239a21fc02e0e0c07")

    on_install(function (pkg) 
        os.cp("Magick++/lib/*", pkg:installdir("include"))
    end)