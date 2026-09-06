import 'package:pulumi/pulumi.dart' as pulumi;

/// The indicator of whether the console access is enabled.
enum ConsoleEnabled implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const ConsoleEnabled(this.wireValue);
  @override
  final String wireValue;

  static ConsoleEnabled fromValue(String value) {
    for (final item in ConsoleEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConsoleEnabled value: $value');
  }
}
