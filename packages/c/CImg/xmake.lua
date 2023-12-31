package("CImg")
    set_description("The CImg Library is a small and open-source C++ toolkit for image processing")

    add_urls("https://github.com/GreycLab/CImg.git")
    add_versions("v1.0.0", "c56a0a14ec7ebafcb9c4ea2e6612d783ef8e81f6")

    on_install(function (package)
        os.cp("Cimg.h", package:installdir("include", "CImg"))
    end)