import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the connection.
enum PersistedConnectionStatus implements pulumi.PulumiEnum<String> {
  valuePending("Pending"),
  valueApproved("Approved"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PersistedConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PersistedConnectionStatus fromValue(String value) {
    for (final item in PersistedConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PersistedConnectionStatus value: $value');
  }
}
