/// Status of the shared private link resource. Valid values are Pending, Approved, Rejected or Disconnected.
enum SharedPrivateLinkResourceStatus {
  pending("Pending"),
  approved("Approved"),
  rejected("Rejected"),
  disconnected("Disconnected");

  const SharedPrivateLinkResourceStatus(this.wireValue);
  final String wireValue;

  static SharedPrivateLinkResourceStatus fromValue(String value) {
    for (final item in SharedPrivateLinkResourceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SharedPrivateLinkResourceStatus value: $value',
    );
  }
}
