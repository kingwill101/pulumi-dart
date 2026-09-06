import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the extension is enabled.
enum IsEnabled implements pulumi.PulumiEnum<String> {
  true_("True"),
  false_("False");

  const IsEnabled(this.wireValue);
  @override
  final String wireValue;

  static IsEnabled fromValue(String value) {
    for (final item in IsEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsEnabled value: $value');
  }
}
