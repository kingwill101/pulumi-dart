/// The table type.
enum TableType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  hive("HIVE");

  const TableType(this.wireValue);
  final String wireValue;

  static TableType fromValue(String value) {
    for (final item in TableType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TableType value: $value');
  }
}

