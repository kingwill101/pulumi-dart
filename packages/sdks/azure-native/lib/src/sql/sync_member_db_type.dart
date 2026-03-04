/// Database type of the sync member.
enum SyncMemberDbType {
  valueAzureSqlDatabase("AzureSqlDatabase"),
  valueSqlServerDatabase("SqlServerDatabase");

  const SyncMemberDbType(this.wireValue);
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
