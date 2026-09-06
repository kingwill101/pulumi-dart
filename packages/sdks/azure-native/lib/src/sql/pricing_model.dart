import 'package:pulumi/pulumi.dart' as pulumi;

/// Pricing model of Managed Instance.
enum PricingModel implements pulumi.PulumiEnum<String> {
  valueRegular("Regular"),
  valueFreemium("Freemium");

  const PricingModel(this.wireValue);
  @override
  final String wireValue;

  static PricingModel fromValue(String value) {
    for (final item in PricingModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingModel value: $value');
  }
}
