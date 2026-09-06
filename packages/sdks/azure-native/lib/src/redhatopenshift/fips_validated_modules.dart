import 'package:pulumi/pulumi.dart' as pulumi;

/// If FIPS validated crypto modules are used
enum FipsValidatedModules implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const FipsValidatedModules(this.wireValue);
  @override
  final String wireValue;

  static FipsValidatedModules fromValue(String value) {
    for (final item in FipsValidatedModules.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FipsValidatedModules value: $value');
  }
}
