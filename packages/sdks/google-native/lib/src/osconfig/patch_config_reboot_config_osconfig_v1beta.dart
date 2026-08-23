/// Post-patch reboot settings.
enum PatchConfigRebootConfigOsconfigV1beta {
  rebootConfigUnspecified("REBOOT_CONFIG_UNSPECIFIED"),
  default_("DEFAULT"),
  always("ALWAYS"),
  never_("NEVER");

  const PatchConfigRebootConfigOsconfigV1beta(this.wireValue);
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
