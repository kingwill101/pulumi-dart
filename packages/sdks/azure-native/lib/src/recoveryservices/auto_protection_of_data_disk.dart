/// A value indicating whether the disk auto protection is enabled.
enum AutoProtectionOfDataDisk {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const AutoProtectionOfDataDisk(this.value);
  final String value;

  static AutoProtectionOfDataDisk fromValue(String value) {
    for (final item in AutoProtectionOfDataDisk.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProtectionOfDataDisk value: $value');
  }
}

