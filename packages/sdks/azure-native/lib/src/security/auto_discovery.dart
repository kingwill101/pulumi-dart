import 'package:pulumi/pulumi.dart' as pulumi;

/// AutoDiscovery states.
enum AutoDiscovery implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled"),
  valueNotApplicable("NotApplicable");

  const AutoDiscovery(this.wireValue);
  @override
  final String wireValue;

  static AutoDiscovery fromValue(String value) {
    for (final item in AutoDiscovery.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoDiscovery value: $value');
  }
}
