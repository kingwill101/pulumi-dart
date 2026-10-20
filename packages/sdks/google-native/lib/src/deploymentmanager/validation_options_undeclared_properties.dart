import 'package:pulumi/pulumi.dart' as pulumi;

/// Specify what to do with extra properties when executing a request.
enum ValidationOptionsUndeclaredProperties implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  include("INCLUDE"),
  ignore("IGNORE"),
  includeWithWarnings("INCLUDE_WITH_WARNINGS"),
  ignoreWithWarnings("IGNORE_WITH_WARNINGS"),
  fail("FAIL");

  const ValidationOptionsUndeclaredProperties(this.wireValue);
  @override
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
