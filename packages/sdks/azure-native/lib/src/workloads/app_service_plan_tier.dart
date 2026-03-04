/// The App Service plan tier.
enum AppServicePlanTier {
  elasticPremium("ElasticPremium"),
  premiumV3("PremiumV3");

  const AppServicePlanTier(this.wireValue);
  final String wireValue;

  static AppServicePlanTier fromValue(String value) {
    for (final item in AppServicePlanTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AppServicePlanTier value: $value');
  }
}
