import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of sharing for this shared-reservation
enum ShareSettingsShareTypeComputeV1 implements pulumi.PulumiEnum<String> {
  local("LOCAL"),
  organization("ORGANIZATION"),
  shareTypeUnspecified("SHARE_TYPE_UNSPECIFIED"),
  specificProjects("SPECIFIC_PROJECTS");

  const ShareSettingsShareTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ShareSettingsShareTypeComputeV1 fromValue(String value) {
    for (final item in ShareSettingsShareTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareSettingsShareTypeComputeV1 value: $value');
  }
}
