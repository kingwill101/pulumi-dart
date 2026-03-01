/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpTypeMetastoreV1alpha {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpTypeMetastoreV1alpha(this.value);
  final String value;

  static DatabaseDumpTypeMetastoreV1alpha fromValue(String value) {
    for (final item in DatabaseDumpTypeMetastoreV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpTypeMetastoreV1alpha value: $value');
  }
}

