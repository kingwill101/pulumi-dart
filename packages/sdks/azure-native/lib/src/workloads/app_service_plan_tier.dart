import 'package:pulumi/pulumi.dart' as pulumi;

/// The App Service plan tier.
enum AppServicePlanTier implements pulumi.PulumiEnum<String> {
  elasticPremium("ElasticPremium"),
  premiumV3("PremiumV3");

  const AppServicePlanTier(this.wireValue);
  @override
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
