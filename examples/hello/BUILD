load(
    "@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl",
    "fsharp_repositories",
    "fsharp_binary",
    "nuget_package",
)

fsharp_binary(
    name = "hello",
    srcs = ["hello.fs"],
    deps = ["//lib"]
)
