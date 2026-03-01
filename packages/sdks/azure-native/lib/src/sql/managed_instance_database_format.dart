/// Specifies the internal format of instance databases specific to the SQL engine version.
enum ManagedInstanceDatabaseFormat {
  valueAlwaysUpToDate("AlwaysUpToDate"),
  valueSQLServer2022("SQLServer2022");

  const ManagedInstanceDatabaseFormat(this.value);
  final String value;

  static ManagedInstanceDatabaseFormat fromValue(String value) {
    for (final item in ManagedInstanceDatabaseFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceDatabaseFormat value: $value');
  }
}

