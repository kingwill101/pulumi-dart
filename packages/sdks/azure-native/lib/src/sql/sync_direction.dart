/// Sync direction of the sync member.
enum SyncDirection {
  valueBidirectional("Bidirectional"),
  valueOneWayMemberToHub("OneWayMemberToHub"),
  valueOneWayHubToMember("OneWayHubToMember");

  const SyncDirection(this.wireValue);
  final String wireValue;

  static SyncDirection fromValue(String value) {
    for (final item in SyncDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncDirection value: $value');
  }
}

