# Copyright (c) Joby Aviation 2022
# Original authors: Thulio Ferraz Assis (thulio@aspect.dev), Aspect.dev
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Declare runtime dependencies
These are needed for local dev, and users must install them as well.
See https://docs.bazel.build/versions/main/skylark/deploying.html#dependencies
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def gcc_toolchain_dependencies():

    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.4.0/bazel-skylib-1.4.0.tar.gz",
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.0/bazel-skylib-1.4.0.tar.gz",
        ],
        sha256 = "f24ab666394232f834f74d19e2ff142b0af17466ea0c69a3f4c276ee75f6efce",
    )

    maybe(
        http_archive,
        name = "aspect_bazel_lib",
        sha256 = "8743da1d0d82df1eb6d9fd240fc213033b65d099ba4f7caa3ec52f6655fc25e1",
        strip_prefix = "bazel-lib-1.24.0",
        url = "https://github.com/aspect-build/bazel-lib/archive/refs/tags/v1.24.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "rules_cc",
        sha256 = "2004c71f3e0a88080b2bd3b6d3b73b4c597116db9c9a36676d0ffad39b849214",
        strip_prefix = "rules_cc-0.0.5",
        urls = ["https://github.com/bazelbuild/rules_cc/releases/download/0.0.5/rules_cc-0.0.5.tar.gz"],
    )
