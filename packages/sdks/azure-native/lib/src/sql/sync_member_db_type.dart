import 'package:pulumi/pulumi.dart' as pulumi;

/// Database type of the sync member.
enum SyncMemberDbType implements pulumi.PulumiEnum<String> {
  valueAzureSqlDatabase("AzureSqlDatabase"),
  valueSqlServerDatabase("SqlServerDatabase");

  const SyncMemberDbType(this.wireValue);
  @override
  final String wireValue;

  static SyncMemberDbType fromValue(String value) {
    for (final item in SyncMemberDbType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncMemberDbType value: $value');
  }
}
