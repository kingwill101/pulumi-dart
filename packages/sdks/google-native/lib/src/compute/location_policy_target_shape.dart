import 'package:pulumi/pulumi.dart' as pulumi;

/// Strategy for distributing VMs across zones in a region.
enum LocationPolicyTargetShape implements pulumi.PulumiEnum<String> {
  any("ANY"),
  anySingleZone("ANY_SINGLE_ZONE"),
  balanced("BALANCED");

  const LocationPolicyTargetShape(this.wireValue);
  @override
  final String wireValue;

  static LocationPolicyTargetShape fromValue(String value) {
    for (final item in LocationPolicyTargetShape.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocationPolicyTargetShape value: $value');
  }
}
