/// The status.
enum PrivateEndpointConnectionStatus {
  unknown("Unknown"),
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const PrivateEndpointConnectionStatus(this.wireValue);
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
