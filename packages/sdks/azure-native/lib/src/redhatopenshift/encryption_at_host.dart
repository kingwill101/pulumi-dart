/// Whether master virtual machines are encrypted at host.
enum EncryptionAtHost {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EncryptionAtHost(this.wireValue);
  final String wireValue;

  static EncryptionAtHost fromValue(String value) {
    for (final item in EncryptionAtHost.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionAtHost value: $value');
  }
}

