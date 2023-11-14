package("pe_bliss")
  set_description("Portable executable library")

  add_urls("https://github.com/heaveless/pe-bliss.git")
  add_versions("v1.0.0", "79b5ff1bbd66fd7746b35c52ae0f19be258605a9")

  on_install(function (package)
    local configs = {}
    if package:config("shared") then
      configs.kind = "shared"
    end
    import("package.tools.xmake").install(package, configs)
  end)
