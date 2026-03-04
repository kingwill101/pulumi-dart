/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpType(this.wireValue);
  final String wireValue;

  static DatabaseDumpType fromValue(String value) {
    for (final item in DatabaseDumpType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpType value: $value');
  }
}
