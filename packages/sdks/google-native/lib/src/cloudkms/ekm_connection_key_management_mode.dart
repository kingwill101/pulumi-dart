/// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
enum EkmConnectionKeyManagementMode {
  keyManagementModeUnspecified("KEY_MANAGEMENT_MODE_UNSPECIFIED"),
  manual("MANUAL"),
  cloudKms("CLOUD_KMS");

  const EkmConnectionKeyManagementMode(this.value);
  final String value;

  static EkmConnectionKeyManagementMode fromValue(String value) {
    for (final item in EkmConnectionKeyManagementMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EkmConnectionKeyManagementMode value: $value');
  }
}

