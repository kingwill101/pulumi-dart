/// Immutable. The database type that the Metastore service stores its data.
enum ServiceDatabaseTypeMetastoreV1alpha {
  databaseTypeUnspecified("DATABASE_TYPE_UNSPECIFIED"),
  mysql("MYSQL"),
  spanner("SPANNER");

  const ServiceDatabaseTypeMetastoreV1alpha(this.wireValue);
  final String wireValue;

  static ServiceDatabaseTypeMetastoreV1alpha fromValue(String value) {
    for (final item in ServiceDatabaseTypeMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceDatabaseTypeMetastoreV1alpha value: $value');
  }
}

