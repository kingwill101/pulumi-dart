/// The vault type, whether it is existing or has to be created.
enum VaultType {
  valueExisting("Existing"),
  valueNew("New");

  const VaultType(this.value);
  final String value;

  static VaultType fromValue(String value) {
    for (final item in VaultType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VaultType value: $value');
  }
}

