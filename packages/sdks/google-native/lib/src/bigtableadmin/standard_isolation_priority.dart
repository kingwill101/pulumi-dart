/// The priority of requests sent using this app profile.
enum StandardIsolationPriority {
  priorityUnspecified("PRIORITY_UNSPECIFIED"),
  priorityLow("PRIORITY_LOW"),
  priorityMedium("PRIORITY_MEDIUM"),
  priorityHigh("PRIORITY_HIGH");

  const StandardIsolationPriority(this.wireValue);
  final String wireValue;

  static StandardIsolationPriority fromValue(String value) {
    for (final item in StandardIsolationPriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardIsolationPriority value: $value');
  }
}
