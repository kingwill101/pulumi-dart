import 'package:pulumi/pulumi.dart' as pulumi;

/// The severity level of the assessment
enum Severity implements pulumi.PulumiEnum<String> {
  valueLow("Low"),
  valueMedium("Medium"),
  valueHigh("High");

  const Severity(this.wireValue);
  @override
  final String wireValue;

  static Severity fromValue(String value) {
    for (final item in Severity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Severity value: $value');
  }
}
