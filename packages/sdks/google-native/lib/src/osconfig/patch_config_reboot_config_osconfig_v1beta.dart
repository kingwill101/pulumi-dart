import 'package:pulumi/pulumi.dart' as pulumi;

/// Post-patch reboot settings.
enum PatchConfigRebootConfigOsconfigV1beta implements pulumi.PulumiEnum<String> {
  rebootConfigUnspecified("REBOOT_CONFIG_UNSPECIFIED"),
  default_("DEFAULT"),
  always("ALWAYS"),
  never_("NEVER");

  const PatchConfigRebootConfigOsconfigV1beta(this.wireValue);
  @override
  final String wireValue;

  static PatchConfigRebootConfigOsconfigV1beta fromValue(String value) {
    for (final item in PatchConfigRebootConfigOsconfigV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchConfigRebootConfigOsconfigV1beta value: $value');
  }
}
