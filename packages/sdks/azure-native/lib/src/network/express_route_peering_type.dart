/// The peering type.
enum ExpressRoutePeeringType {
  valueAzurePublicPeering("AzurePublicPeering"),
  valueAzurePrivatePeering("AzurePrivatePeering"),
  valueMicrosoftPeering("MicrosoftPeering");

  const ExpressRoutePeeringType(this.wireValue);
  final String wireValue;

  static ExpressRoutePeeringType fromValue(String value) {
    for (final item in ExpressRoutePeeringType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePeeringType value: $value');
  }
}

