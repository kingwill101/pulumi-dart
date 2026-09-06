import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the internal format of instance databases specific to the SQL engine version.
enum ManagedInstanceDatabaseFormat implements pulumi.PulumiEnum<String> {
  valueAlwaysUpToDate("AlwaysUpToDate"),
  valueSQLServer2022("SQLServer2022");

  const ManagedInstanceDatabaseFormat(this.wireValue);
  @override
  final String wireValue;

  static ManagedInstanceDatabaseFormat fromValue(String value) {
    for (final item in ManagedInstanceDatabaseFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedInstanceDatabaseFormat value: $value');
  }
}
