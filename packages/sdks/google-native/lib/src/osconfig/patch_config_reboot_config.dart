import 'package:pulumi/pulumi.dart' as pulumi;

/// Post-patch reboot settings.
enum PatchConfigRebootConfig implements pulumi.PulumiEnum<String> {
  rebootConfigUnspecified("REBOOT_CONFIG_UNSPECIFIED"),
  default_("DEFAULT"),
  always("ALWAYS"),
  never_("NEVER");

  const PatchConfigRebootConfig(this.wireValue);
  @override
  final String wireValue;

  static PatchConfigRebootConfig fromValue(String value) {
    for (final item in PatchConfigRebootConfig.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchConfigRebootConfig value: $value');
  }
}
