import 'package:pulumi/pulumi.dart' as pulumi;

/// State of Private Link Connection.
enum PrivateLinkConnectionStatus implements pulumi.PulumiEnum<String> {
  disconnected("Disconnected"),
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected");

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
