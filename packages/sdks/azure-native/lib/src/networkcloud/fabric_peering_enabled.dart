/// The indicator to specify if the load balancer peers with the network fabric.
enum FabricPeeringEnabled {
  valueTrue("True"),
  valueFalse("False");

  const FabricPeeringEnabled(this.wireValue);
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
