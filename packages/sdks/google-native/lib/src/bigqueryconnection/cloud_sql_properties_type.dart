/// Type of the Cloud SQL database.
enum CloudSqlPropertiesType {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  postgres("POSTGRES"),
  mysql("MYSQL");

  const CloudSqlPropertiesType(this.wireValue);
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
