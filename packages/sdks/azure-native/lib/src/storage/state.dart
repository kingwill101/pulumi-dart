import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the state of virtual network rule.
enum State implements pulumi.PulumiEnum<String> {
  valueProvisioning("Provisioning"),
  valueDeprovisioning("Deprovisioning"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueNetworkSourceDeleted("NetworkSourceDeleted");

  const State(this.wireValue);
  @override
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
