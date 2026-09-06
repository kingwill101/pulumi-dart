import 'package:pulumi/pulumi.dart' as pulumi;

/// The peering type.
enum ExpressRoutePeeringType implements pulumi.PulumiEnum<String> {
  valueAzurePublicPeering("AzurePublicPeering"),
  valueAzurePrivatePeering("AzurePrivatePeering"),
  valueMicrosoftPeering("MicrosoftPeering");

  const ExpressRoutePeeringType(this.wireValue);
  @override
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
