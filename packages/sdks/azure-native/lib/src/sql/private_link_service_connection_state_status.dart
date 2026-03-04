/// The private link service connection status.
enum PrivateLinkServiceConnectionStateStatus {
  valueApproved("Approved"),
  valuePending("Pending"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PrivateLinkServiceConnectionStateStatus(this.wireValue);
  final String wireValue;

  static PrivateLinkServiceConnectionStateStatus fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionStateStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PrivateLinkServiceConnectionStateStatus value: $value',
    );
  }
}
