/// The peering type.
enum ExpressRoutePeeringType {
  valueAzurePublicPeering("AzurePublicPeering"),
  valueAzurePrivatePeering("AzurePrivatePeering"),
  valueMicrosoftPeering("MicrosoftPeering");

  const ExpressRoutePeeringType(this.value);
  final String value;

  static ExpressRoutePeeringType fromValue(String value) {
    for (final item in ExpressRoutePeeringType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRoutePeeringType value: $value');
  }
}

