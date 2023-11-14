package("cxxopts")
  set_description("Lightweight C++ command line option parser")

  add_urls("https://github.com/jarro2783/cxxopts.git")
  add_versions("v3.1.1", "78b90d8f0ce9b37594a0f25906213ae245b422f0")

  on_install(function (package)
    local configs = {}
    if package:config("shared") then
      configs.kind = "shared"
    end
    import("package.tools.xmake").install(package, configs)
  end)
