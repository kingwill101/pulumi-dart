/// denySettings Mode that defines denied actions.
enum DenySettingsMode {
  denyDelete("denyDelete"),
  denyWriteAndDelete("denyWriteAndDelete"),
  none("none");

  const DenySettingsMode(this.wireValue);
  final String wireValue;

  static DenySettingsMode fromValue(String value) {
    for (final item in DenySettingsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DenySettingsMode value: $value');
  }
}

