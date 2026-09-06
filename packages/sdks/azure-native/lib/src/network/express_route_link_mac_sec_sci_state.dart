import 'package:pulumi/pulumi.dart' as pulumi;

/// Sci mode enabled/disabled.
enum ExpressRouteLinkMacSecSciState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRouteLinkMacSecSciState(this.wireValue);
  @override
  final String wireValue;

  static ExpressRouteLinkMacSecSciState fromValue(String value) {
    for (final item in ExpressRouteLinkMacSecSciState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkMacSecSciState value: $value');
  }
}
