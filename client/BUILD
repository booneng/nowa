load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go_default_library",
    srcs = ["client.go"],
    importpath = "github.com/booneng/nowa/client",
    visibility = ["//visibility:private"],
    deps = [
        "//protos:protos_go_proto",
        "@org_golang_google_grpc//:go_default_library",
    ],
)

go_binary(
    name = "client",
    embed = [":go_default_library"],
    visibility = ["//visibility:public"],
)
