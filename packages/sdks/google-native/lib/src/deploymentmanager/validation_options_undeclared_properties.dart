/// Specify what to do with extra properties when executing a request.
enum ValidationOptionsUndeclaredProperties {
  unknown("UNKNOWN"),
  include("INCLUDE"),
  ignore("IGNORE"),
  includeWithWarnings("INCLUDE_WITH_WARNINGS"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsUndeclaredProperties(this.value);
  final String value;

  static ValidationOptionsUndeclaredProperties fromValue(String value) {
    for (final item in ValidationOptionsUndeclaredProperties.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsUndeclaredProperties value: $value');
  }
}

