import 'package:pulumi/pulumi.dart' as pulumi;

/// Database type (e.g. SqlAzure / MySql).
enum DatabaseType implements pulumi.PulumiEnum<String> {
  sqlAzure("SqlAzure"),
  mySql("MySql"),
  localMySql("LocalMySql"),
  postgreSql("PostgreSql");

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
