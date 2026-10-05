import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
enum EkmConnectionKeyManagementMode implements pulumi.PulumiEnum<String> {
  keyManagementModeUnspecified("KEY_MANAGEMENT_MODE_UNSPECIFIED"),
  manual("MANUAL"),
  cloudKms("CLOUD_KMS");

  const EkmConnectionKeyManagementMode(this.wireValue);
  @override
  final String wireValue;

  static EkmConnectionKeyManagementMode fromValue(String value) {
    for (final item in EkmConnectionKeyManagementMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EkmConnectionKeyManagementMode value: $value');
  }
}
