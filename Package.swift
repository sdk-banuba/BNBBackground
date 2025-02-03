// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-215-g9f21b13b23"

let package = Package(
    name: "BNBBackground",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBBackground",
            targets: [
                "BNBBackground",
                "BNBBackground_BNBSdkCore",
                "BNBBackground_BNBEffectPlayer",
                "BNBBackground_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBBackground",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-215-g9f21b13b23/BNBBackground.zip",
            checksum: "866a0f4bc2b9e34dbca312945cf7f72380af81d70ec06a3f8a5436bfc3155898"
        ),
        .target(
            name: "BNBBackground_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBBackground_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBBackground_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
