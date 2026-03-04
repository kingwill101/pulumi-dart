/// Purpose of this test line, e.g. automated or manual testing
enum TestLinePurpose {
  manual("Manual"),
  automated("Automated");

  const TestLinePurpose(this.wireValue);
  final String wireValue;

  static TestLinePurpose fromValue(String value) {
    for (final item in TestLinePurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestLinePurpose value: $value');
  }
}
