/// The indicator to specify if the load balancer peers with the network fabric.
enum FabricPeeringEnabled {
  valueTrue("True"),
  valueFalse("False");

  const FabricPeeringEnabled(this.value);
  final String value;

  static FabricPeeringEnabled fromValue(String value) {
    for (final item in FabricPeeringEnabled.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FabricPeeringEnabled value: $value');
  }
}

