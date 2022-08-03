// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "Bugly",
  platforms: [.iOS(.v9)],
  products: [
    .library(name: "Bugly", targets: ["BuglyWrapper"]),
  ],
  targets: [
    .target(
      name: "BuglyWrapper",
      dependencies: ["Bugly"],
      linkerSettings: [
        .linkedLibrary("c++"),
        .linkedLibrary("z"),
        .linkedFramework("Security"),
        .linkedFramework("SystemConfiguration"),
      ]
    ),
    .binaryTarget(
      name: "Bugly",
      url: "https://github.com/kemchenj/BuglyForSPM/releases/download/2.5.9/Bugly.xcframework.zip",
      checksum: "29b86ab4f3820bef2e9c2260b6ddd85919a201e589879e0416ce5aae32eb89c7"
    ),
  ]
)
