// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-217-g36d3a95c51"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-217-g36d3a95c51/BNBBackground.zip",
            checksum: "43ab16bbea4f1bcf65de0935289a486142da793473da3bad552f97f61552c05b"
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
