import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of the database dump. If unspecified, defaults to MYSQL.
enum DatabaseDumpType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  avro("AVRO");

  const DatabaseDumpType(this.wireValue);
  @override
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
