import 'package:pulumi/pulumi.dart' as pulumi;

/// The status.
enum PrivateEndpointConnectionStatus implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const PrivateEndpointConnectionStatus(this.wireValue);
  @override
  final String wireValue;

  static PrivateEndpointConnectionStatus fromValue(String value) {
    for (final item in PrivateEndpointConnectionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateEndpointConnectionStatus value: $value');
  }
}
