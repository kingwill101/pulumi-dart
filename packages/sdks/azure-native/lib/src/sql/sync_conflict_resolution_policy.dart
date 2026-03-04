/// Conflict resolution policy of the sync group.
enum SyncConflictResolutionPolicy {
  valueHubWin("HubWin"),
  valueMemberWin("MemberWin");

  const SyncConflictResolutionPolicy(this.wireValue);
  final String wireValue;

  static SyncConflictResolutionPolicy fromValue(String value) {
    for (final item in SyncConflictResolutionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncConflictResolutionPolicy value: $value');
  }
}
