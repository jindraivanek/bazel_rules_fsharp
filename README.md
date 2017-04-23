# F# Rules

This is forked from https://github.com/bazelbuild/rules_dotnet and quick-patched to work with fsharp.

Tested on linux, maybe it works on OSX, Windows not supported yet.

## Usage

`WORKSPACE` file:

```python
git_repository(
    name = "io_bazel_rules_dotnet_fsharp",
    remote = "https://github.com/jindraivanek/bazel_rules_fsharp.git",
    tag = "0.0.2",
)

load(
    "@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl",
    "fsharp_repositories",
)

fsharp_repositories(use_local_mono = True)
```

## Examples of BUILD files

### fsharp_library

```python
load(
    "@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl",
    "fsharp_binary",
)

fsharp_library(
    name = "lib",
    srcs = ["lib.fs"],
    deps = ["//someLib"],
)
```

### fsharp_binary

```python
load(
    "@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl",
    "fsharp_binary",
)

fsharp_binary(
    name = "MyApp",
    srcs = ["MyApp.fs"],
    deps = ["//lib"],
)
```

## Paket support
Add `"paket_dependencies"` to `load` in WORKSPACE and following:

```python
paket_dependencies(
    name = "paket_deps",
    deps = """
source https://nuget.org/api/v2
framework: net46
nuget ExtCore
nuget Argu
    """,
)
```

where `deps` is contents of generated paket.dependencies file.

Then you can reference all packages with `"@paket_deps//:dylibs"` in `deps` attribute.