/// Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
enum PrivateLinkServiceConnectionStatus {
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const PrivateLinkServiceConnectionStatus(this.value);
  final String value;

  static PrivateLinkServiceConnectionStatus fromValue(String value) {
    for (final item in PrivateLinkServiceConnectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateLinkServiceConnectionStatus value: $value');
  }
}

