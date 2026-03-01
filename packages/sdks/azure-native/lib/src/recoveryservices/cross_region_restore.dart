/// Flag to show if Cross Region Restore is enabled on the Vault or not
enum CrossRegionRestore {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const CrossRegionRestore(this.value);
  final String value;

  static CrossRegionRestore fromValue(String value) {
    for (final item in CrossRegionRestore.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossRegionRestore value: $value');
  }
}

