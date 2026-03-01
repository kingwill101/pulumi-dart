/// Status of the IoT Security solution.
enum SecuritySolutionStatus {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SecuritySolutionStatus(this.value);
  final String value;

  static SecuritySolutionStatus fromValue(String value) {
    for (final item in SecuritySolutionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySolutionStatus value: $value');
  }
}

