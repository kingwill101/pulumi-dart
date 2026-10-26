import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
enum ModelFilteringOptionRetailV2beta implements pulumi.PulumiEnum<String> {
  recommendationsFilteringOptionUnspecified("RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED"),
  recommendationsFilteringDisabled("RECOMMENDATIONS_FILTERING_DISABLED"),
  recommendationsFilteringEnabled("RECOMMENDATIONS_FILTERING_ENABLED");

  const ModelFilteringOptionRetailV2beta(this.wireValue);
  @override
  final String wireValue;

  static ModelFilteringOptionRetailV2beta fromValue(String value) {
    for (final item in ModelFilteringOptionRetailV2beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelFilteringOptionRetailV2beta value: $value');
  }
}
