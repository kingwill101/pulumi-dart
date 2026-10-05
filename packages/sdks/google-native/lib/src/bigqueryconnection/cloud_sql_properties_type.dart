import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the Cloud SQL database.
enum CloudSqlPropertiesType implements pulumi.PulumiEnum<String> {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  postgres("POSTGRES"),
  mysql("MYSQL");

  const CloudSqlPropertiesType(this.wireValue);
  @override
  final String wireValue;

  static CloudSqlPropertiesType fromValue(String value) {
    for (final item in CloudSqlPropertiesType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlPropertiesType value: $value');
  }
}
