import 'package:pulumi/pulumi.dart' as pulumi;

/// The database type.
enum DatabaseType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  hive("HIVE");

  const DatabaseType(this.wireValue);
  @override
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
