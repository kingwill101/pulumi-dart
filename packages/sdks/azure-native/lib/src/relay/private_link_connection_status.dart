import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the connection.
enum PrivateLinkConnectionStatus implements pulumi.PulumiEnum<String> {
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const PrivateLinkConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PrivateLinkConnectionStatus fromValue(String value) {
    for (final item in PrivateLinkConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkConnectionStatus value: $value');
  }
}
