// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.3-43-gc75a0b291"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.3-43-gc75a0b291/BNBBackground.zip",
            checksum: "bec865b4aa3fdc34a94a97bf70565c50f27846e0bc6f7a00fd547ef26441fc33"
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
