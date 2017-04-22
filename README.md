# F# Rules

This is forked from https://github.com/bazelbuild/rules_dotnet and quick-patched to work with fsharp.

## Usage

Add the following to your `WORKSPACE` file to add the external repositories:

```python
git_repository(
    name = "io_bazel_rules_dotnet_fsharp",
    remote = "https://github.com/jindraivanek/bazel_rules_fsharp.git",
    tag = "0.0.1",
)

load(
    "@io_bazel_rules_dotnet_fsharp//dotnet:fsharp.bzl",
    "fsharp_repositories",
    "nuget_package",
)

fsharp_repositories(use_local_mono = True)
```

## Examples

### fsharp_library

```python
fsharp_library(
    name = "lib",
    srcs = ["lib.fs"],
    deps = ["//my/dependency:SomeLib"],
)
```

### fsharp_binary

```python
csharp_binary(
    name = "MyApp",
    srcs = ["MyApp.fs"],
    deps = ["//my/dependency:MyLib"],
)
```
