// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "EnumeratingViewModifier",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "EnumeratingViewModifier",
      targets: ["EnumeratingViewModifier"]
    ),
    .library(
      name: "Examples",
      targets: ["Examples"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "EnumeratingViewModifier",
      dependencies: []
    ),
    .target(
      name: "Examples",
      dependencies: ["EnumeratingViewModifier"]
    ),
  ]
)
