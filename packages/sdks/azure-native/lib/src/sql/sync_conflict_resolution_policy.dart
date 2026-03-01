/// Conflict resolution policy of the sync group.
enum SyncConflictResolutionPolicy {
  valueHubWin("HubWin"),
  valueMemberWin("MemberWin");

  const SyncConflictResolutionPolicy(this.value);
  final String value;

  static SyncConflictResolutionPolicy fromValue(String value) {
    for (final item in SyncConflictResolutionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncConflictResolutionPolicy value: $value');
  }
}

