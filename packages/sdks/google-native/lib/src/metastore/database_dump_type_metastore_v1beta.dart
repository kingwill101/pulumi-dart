import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpTypeMetastoreV1beta implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpTypeMetastoreV1beta(this.wireValue);
  @override
  final String wireValue;

  static DatabaseDumpTypeMetastoreV1beta fromValue(String value) {
    for (final item in DatabaseDumpTypeMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseDumpTypeMetastoreV1beta value: $value');
  }
}
