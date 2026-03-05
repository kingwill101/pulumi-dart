/// Replication mode of the link
enum ReplicationModeType {
  valueAsync("Async"),
  valueSync("Sync");

  const ReplicationModeType(this.wireValue);
  final String wireValue;

  static ReplicationModeType fromValue(String value) {
    for (final item in ReplicationModeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationModeType value: $value');
  }
}

