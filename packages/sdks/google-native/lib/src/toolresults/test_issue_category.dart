import 'package:pulumi/pulumi.dart' as pulumi;

/// Category of issue. Required.
enum TestIssueCategory implements pulumi.PulumiEnum<String> {
  unspecifiedCategory("unspecifiedCategory"),
  common("common"),
  robo("robo");

  const TestIssueCategory(this.wireValue);
  @override
  final String wireValue;

  static TestIssueCategory fromValue(String value) {
    for (final item in TestIssueCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestIssueCategory value: $value');
  }
}
