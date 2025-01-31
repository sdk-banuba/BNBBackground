// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-214-g5030d169c2"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-214-g5030d169c2/BNBBackground.zip",
            checksum: "5be681916053ac49cd82550e7342ead4694a143e5f47e1ba7755d567bbc8935b"
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
