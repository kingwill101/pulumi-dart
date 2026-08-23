/// Status of the IoT Security solution.
enum SecuritySolutionStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const SecuritySolutionStatus(this.wireValue);
  final String wireValue;

  static SecuritySolutionStatus fromValue(String value) {
    for (final item in SecuritySolutionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySolutionStatus value: $value');
  }
}
