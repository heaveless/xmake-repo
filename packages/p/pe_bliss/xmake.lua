package("pe_bliss")
  set_description("The pe_bliss package")

  add_urls("https://github.com/heaveless/pe-bliss.git")
  add_versions("v1.0.0", "f386e44f6db0d2a822d784be0fc37d33e2e2383f")

  on_install(function (package)
    local configs = {}
    if package:config("shared") then
      configs.kind = "shared"
    end
    import("package.tools.xmake").install(package, configs)
  end)
