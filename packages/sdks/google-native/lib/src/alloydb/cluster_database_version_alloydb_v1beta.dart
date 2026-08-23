/// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
enum ClusterDatabaseVersionAlloydbV1beta {
  databaseVersionUnspecified("DATABASE_VERSION_UNSPECIFIED"),
  postgres13("POSTGRES_13"),
  postgres14("POSTGRES_14"),
  postgres15("POSTGRES_15");

  const ClusterDatabaseVersionAlloydbV1beta(this.wireValue);
  final String wireValue;

  static ClusterDatabaseVersionAlloydbV1beta fromValue(String value) {
    for (final item in ClusterDatabaseVersionAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterDatabaseVersionAlloydbV1beta value: $value');
  }
}
