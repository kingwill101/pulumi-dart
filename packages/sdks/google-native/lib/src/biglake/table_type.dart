/// The table type.
enum TableType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  hive("HIVE");

  const TableType(this.value);
  final String value;

  static TableType fromValue(String value) {
    for (final item in TableType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TableType value: $value');
  }
}

