/// The type of the test.
enum TestType {
  valueOutOfBoxTest("OutOfBoxTest"),
  valueFunctionalTest("FunctionalTest"),
  valueFlowDrivenTest("FlowDrivenTest");

  const TestType(this.wireValue);
  final String wireValue;

  static TestType fromValue(String value) {
    for (final item in TestType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestType value: $value');
  }
}
