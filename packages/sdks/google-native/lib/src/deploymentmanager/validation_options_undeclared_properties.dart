/// Specify what to do with extra properties when executing a request.
enum ValidationOptionsUndeclaredProperties {
  unknown("UNKNOWN"),
  include("INCLUDE"),
  ignore("IGNORE"),
  includeWithWarnings("INCLUDE_WITH_WARNINGS"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsUndeclaredProperties(this.wireValue);
  final String wireValue;

  static ValidationOptionsUndeclaredProperties fromValue(String value) {
    for (final item in ValidationOptionsUndeclaredProperties.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationOptionsUndeclaredProperties value: $value');
  }
}
