import 'package:pulumi/pulumi.dart' as pulumi;

/// The indicator to specify if the load balancer peers with the network fabric.
enum FabricPeeringEnabled implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const FabricPeeringEnabled(this.wireValue);
  @override
  final String wireValue;

  static FabricPeeringEnabled fromValue(String value) {
    for (final item in FabricPeeringEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FabricPeeringEnabled value: $value');
  }
}
