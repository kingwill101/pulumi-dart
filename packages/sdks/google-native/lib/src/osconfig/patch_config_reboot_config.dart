/// Post-patch reboot settings.
enum PatchConfigRebootConfig {
  rebootConfigUnspecified("REBOOT_CONFIG_UNSPECIFIED"),
  default_("DEFAULT"),
  always("ALWAYS"),
  never("NEVER");

  const PatchConfigRebootConfig(this.value);
  final String value;

  static PatchConfigRebootConfig fromValue(String value) {
    for (final item in PatchConfigRebootConfig.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchConfigRebootConfig value: $value');
  }
}

