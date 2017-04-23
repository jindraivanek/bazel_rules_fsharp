load(
    "@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl",
    "fsharp_binary",
)

fsharp_binary(
    name = "hello_paket",
    srcs = ["hello.fs"],
    deps = ["//lib", "@paket_deps//:dylibs"]
)
