load("@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl", "dll_import")

dll_import(
  name = "dylibs",
  srcs = glob(["**/*.dll"]),
  visibility = ["//visibility:public"],
)
