/// Category of issue. Required.
enum TestIssueCategory {
  unspecifiedCategory("unspecifiedCategory"),
  common("common"),
  robo("robo");

  const TestIssueCategory(this.wireValue);
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
