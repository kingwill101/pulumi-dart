/// Replication mode of the link
enum ReplicationModeType {
  valueAsync("Async"),
  valueSync("Sync");

  const ReplicationModeType(this.value);
  final String value;

  static ReplicationModeType fromValue(String value) {
    for (final item in ReplicationModeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationModeType value: $value');
  }
}

