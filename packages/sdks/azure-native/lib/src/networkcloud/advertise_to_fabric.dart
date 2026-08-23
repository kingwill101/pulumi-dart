/// The indicator of if this advertisement is also made to the network fabric associated with the Network Cloud Cluster. This field is ignored if fabricPeeringEnabled is set to False.
enum AdvertiseToFabric {
  valueTrue("True"),
  valueFalse("False");

  const AdvertiseToFabric(this.wireValue);
  final String wireValue;

  static AdvertiseToFabric fromValue(String value) {
    for (final item in AdvertiseToFabric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvertiseToFabric value: $value');
  }
}
