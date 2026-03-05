/// The vault type, whether it is existing or has to be created.
enum VaultType {
  valueExisting("Existing"),
  valueNew("New");

  const VaultType(this.wireValue);
  final String wireValue;

  static VaultType fromValue(String value) {
    for (final item in VaultType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VaultType value: $value');
  }
}

