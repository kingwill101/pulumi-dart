import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the test.
enum TestType implements pulumi.PulumiEnum<String> {
  valueOutOfBoxTest("OutOfBoxTest"),
  valueFunctionalTest("FunctionalTest"),
  valueFlowDrivenTest("FlowDrivenTest");

  const TestType(this.wireValue);
  @override
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
