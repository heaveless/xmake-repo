package("crow")
  set_description("Crow is very fast and easy to use C++ micro web framework (inspired by Python Flask)")

  add_urls("https://github.com/ipkn/crow.git")
  add_versions("v1.0.0", "2b43d3cd6a9a9cdbc99dfef9b86ff3f3027f3d1f")

  on_install(function (package)
    os.cp("include/*.h", package:installdir("include", "crow"))
  end)
