// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.3"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.3/BNBBackground.zip",
            checksum: "1c7b4608672efae7e7dad1a0f10c49f436c564720bdd66577ea4a7c22f3605ff"
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
