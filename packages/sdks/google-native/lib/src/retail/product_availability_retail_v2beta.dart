import 'package:pulumi/pulumi.dart' as pulumi;

/// The online availability of the Product. Default to Availability.IN_STOCK. Corresponding properties: Google Merchant Center property [availability](https://support.google.com/merchants/answer/6324448). Schema.org property [Offer.availability](https://schema.org/availability).
enum ProductAvailabilityRetailV2beta implements pulumi.PulumiEnum<String> {
  availabilityUnspecified("AVAILABILITY_UNSPECIFIED"),
  inStock("IN_STOCK"),
  outOfStock("OUT_OF_STOCK"),
  preorder("PREORDER"),
  backorder("BACKORDER");

  const ProductAvailabilityRetailV2beta(this.wireValue);
  @override
  final String wireValue;

  static ProductAvailabilityRetailV2beta fromValue(String value) {
    for (final item in ProductAvailabilityRetailV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProductAvailabilityRetailV2beta value: $value');
  }
}
