package("cxxopts")
  set_description("Lightweight C++ command line option parser")

  add_urls("https://github.com/jarro2783/cxxopts/archive/refs/tags/v$(version).tar.gz")
  add_versions("v13.1.1", "eb787304d67ec22f7c3a184ee8b4c481d04357fd")

  on_install(function (package)
    os.cp("include/*.hpp", package:installdir("include", "cxxopts"))
  end)
