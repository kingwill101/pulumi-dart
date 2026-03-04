/// A description of why the `status` has its value
enum StatusReason {
  valueExpired("Expired"),
  valueUserRequested("UserRequested"),
  valueNewerRequestInitiated("NewerRequestInitiated");

  const StatusReason(this.wireValue);
  final String wireValue;

  static StatusReason fromValue(String value) {
    for (final item in StatusReason.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusReason value: $value');
  }
}
