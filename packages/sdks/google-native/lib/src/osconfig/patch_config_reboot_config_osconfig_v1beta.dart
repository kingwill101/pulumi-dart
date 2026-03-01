/// Post-patch reboot settings.
enum PatchConfigRebootConfigOsconfigV1beta {
  rebootConfigUnspecified("REBOOT_CONFIG_UNSPECIFIED"),
  default_("DEFAULT"),
  always("ALWAYS"),
  never("NEVER");

  const PatchConfigRebootConfigOsconfigV1beta(this.value);
  final String value;

  static PatchConfigRebootConfigOsconfigV1beta fromValue(String value) {
    for (final item in PatchConfigRebootConfigOsconfigV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchConfigRebootConfigOsconfigV1beta value: $value');
  }
}

