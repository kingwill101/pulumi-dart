/// A value indicating whether the disk auto protection is enabled.
enum AutoProtectionOfDataDisk {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const AutoProtectionOfDataDisk(this.wireValue);
  final String wireValue;

  static AutoProtectionOfDataDisk fromValue(String value) {
    for (final item in AutoProtectionOfDataDisk.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProtectionOfDataDisk value: $value');
  }
}

