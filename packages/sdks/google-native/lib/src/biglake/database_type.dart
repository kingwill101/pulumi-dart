/// The database type.
enum DatabaseType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  hive("HIVE");

  const DatabaseType(this.wireValue);
  final String wireValue;

  static DatabaseType fromValue(String value) {
    for (final item in DatabaseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseType value: $value');
  }
}

