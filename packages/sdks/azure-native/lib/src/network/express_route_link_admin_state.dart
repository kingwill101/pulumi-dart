import 'package:pulumi/pulumi.dart' as pulumi;

/// Administrative state of the physical port.
enum ExpressRouteLinkAdminState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ExpressRouteLinkAdminState(this.wireValue);
  @override
  final String wireValue;

  static ExpressRouteLinkAdminState fromValue(String value) {
    for (final item in ExpressRouteLinkAdminState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkAdminState value: $value');
  }
}
