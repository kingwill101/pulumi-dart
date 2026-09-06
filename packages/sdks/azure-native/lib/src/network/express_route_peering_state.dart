import 'package:pulumi/pulumi.dart' as pulumi;

/// The peering state.
enum ExpressRoutePeeringState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRoutePeeringState(this.wireValue);
  @override
  final String wireValue;

  static ExpressRoutePeeringState fromValue(String value) {
    for (final item in ExpressRoutePeeringState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePeeringState value: $value');
  }
}
