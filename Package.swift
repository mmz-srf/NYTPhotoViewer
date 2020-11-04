// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NYTPhotoViewer",
    platforms: [
            .iOS(.v12),
    ],
    products: [
        .library(
            name: "NYTPhotoViewer",
            targets: ["NYTPhotoViewer"]),
    ],
    dependencies: [
     ],
    targets: [
        .target(
            name: "NYTPhotoViewer",
            dependencies: [],
			path: "NYTPhotoViewer",
			exclude: ["NYTPhotoViewer.bundle", "Info.plist"],
            resources: [
                .process("NYTPhotoViewer.bundle")
            ],
            cSettings: [
             .headerSearchPath(""),
                .headerSearchPath("Protocols"),
                .headerSearchPath("Resource Loading"),
            ]
        )
    ]
)
