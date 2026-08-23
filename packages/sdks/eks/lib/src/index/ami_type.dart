/// Predefined AMI types for EKS optimized AMIs. Can be used to select the latest EKS optimized AMI for a node group.
enum AmiType {
  aL2X8664("AL2_x86_64"),
  aL2X8664GPU("AL2_x86_64_GPU"),
  aL2Arm64("AL2_ARM_64"),
  aL2023X8664Standard("AL2023_x86_64_STANDARD"),
  aL2023Arm64Standard("AL2023_ARM_64_STANDARD"),
  aL2023X8664Nvidia("AL2023_x86_64_NVIDIA"),
  bottlerocketArm64("BOTTLEROCKET_ARM_64"),
  bottlerocketX8664("BOTTLEROCKET_x86_64"),
  bottlerocketArm64Nvidia("BOTTLEROCKET_ARM_64_NVIDIA"),
  bottlerocketX8664Nvidia("BOTTLEROCKET_x86_64_NVIDIA");

  const AmiType(this.wireValue);
  final String wireValue;

  static AmiType fromValue(String value) {
    for (final item in AmiType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AmiType value: $value');
  }
}
