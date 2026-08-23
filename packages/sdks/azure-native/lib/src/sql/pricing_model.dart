/// Pricing model of Managed Instance.
enum PricingModel {
  valueRegular("Regular"),
  valueFreemium("Freemium");

  const PricingModel(this.wireValue);
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
