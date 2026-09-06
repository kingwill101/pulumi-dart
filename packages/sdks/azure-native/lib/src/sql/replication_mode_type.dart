import 'package:pulumi/pulumi.dart' as pulumi;

/// Replication mode of the link
enum ReplicationModeType implements pulumi.PulumiEnum<String> {
  valueAsync("Async"),
  valueSync("Sync");

  const ReplicationModeType(this.wireValue);
  @override
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
