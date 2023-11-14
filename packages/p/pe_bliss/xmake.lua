package("pe_bliss")
  set_description("The pe_bliss package")

  add_urls("https://github.com/heaveless/pe-bliss.git")
  add_versions("v1.0.0", "3eef319fc92dd980adb5ef4bb65bbee03d59dd1d")

  on_install(function (package)
    local configs = {}
    if package:config("shared") then
      configs.kind = "shared"
    end
    import("package.tools.xmake").install(package, configs)
  end)
