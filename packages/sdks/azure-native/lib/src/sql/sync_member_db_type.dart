/// Database type of the sync member.
enum SyncMemberDbType {
  valueAzureSqlDatabase("AzureSqlDatabase"),
  valueSqlServerDatabase("SqlServerDatabase");

  const SyncMemberDbType(this.value);
  final String value;

  static SyncMemberDbType fromValue(String value) {
    for (final item in SyncMemberDbType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncMemberDbType value: $value');
  }
}

