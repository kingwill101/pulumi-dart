/// Status of the shared private link resource. Valid values are Pending, Approved, Rejected or Disconnected.
enum SharedPrivateLinkResourceStatus {
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const SharedPrivateLinkResourceStatus(this.value);
  final String value;

  static SharedPrivateLinkResourceStatus fromValue(String value) {
    for (final item in SharedPrivateLinkResourceStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SharedPrivateLinkResourceStatus value: $value');
  }
}

