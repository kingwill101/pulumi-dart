/// The type of the new access entry. Valid values are STANDARD, FARGATE_LINUX, EC2_LINUX, and EC2_WINDOWS.
/// Defaults to STANDARD which provides the standard workflow. EC2_LINUX and EC2_WINDOWS types disallow users to input a kubernetesGroup, and prevent associating access policies.
enum AccessEntryType {
  standard("STANDARD"),
  fargateLinux("FARGATE_LINUX"),
  eC2Linux("EC2_LINUX"),
  eC2Windows("EC2_WINDOWS"),
  eC2("EC2");

  const AccessEntryType(this.wireValue);
  final String wireValue;

  static AccessEntryType fromValue(String value) {
    for (final item in AccessEntryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessEntryType value: $value');
  }
}

