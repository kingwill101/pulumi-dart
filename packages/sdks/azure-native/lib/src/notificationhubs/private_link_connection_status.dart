/// State of Private Link Connection.
enum PrivateLinkConnectionStatus {
  disconnected("Disconnected"),
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected");

  const PrivateLinkConnectionStatus(this.wireValue);
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
