/// Optional. The database engine major version. This is an optional field. If a database version is not supplied at cluster creation time, then a default database version will be used.
enum AlloyDbSettingsDatabaseVersion {
  databaseVersionUnspecified("DATABASE_VERSION_UNSPECIFIED"),
  postgres14("POSTGRES_14"),
  postgres15("POSTGRES_15");

  const AlloyDbSettingsDatabaseVersion(this.wireValue);
  final String wireValue;

  static AlloyDbSettingsDatabaseVersion fromValue(String value) {
    for (final item in AlloyDbSettingsDatabaseVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlloyDbSettingsDatabaseVersion value: $value');
  }
}

