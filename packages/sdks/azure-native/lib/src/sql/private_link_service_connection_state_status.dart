/// The private link service connection status.
enum PrivateLinkServiceConnectionStateStatus {
  valueApproved("Approved"),
  valuePending("Pending"),
  valueRejected("Rejected"),
  valueDisconnected("Disconnected");

  const PrivateLinkServiceConnectionStateStatus(this.value);
  final String value;

  static PrivateLinkServiceConnectionStateStatus fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionStateStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceConnectionStateStatus value: $value');
  }
}

