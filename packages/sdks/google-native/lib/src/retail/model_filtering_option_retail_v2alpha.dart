/// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
enum ModelFilteringOptionRetailV2alpha {
  recommendationsFilteringOptionUnspecified("RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED"),
  recommendationsFilteringDisabled("RECOMMENDATIONS_FILTERING_DISABLED"),
  recommendationsFilteringEnabled("RECOMMENDATIONS_FILTERING_ENABLED");

  const ModelFilteringOptionRetailV2alpha(this.wireValue);
  final String wireValue;

  static ModelFilteringOptionRetailV2alpha fromValue(String value) {
    for (final item in ModelFilteringOptionRetailV2alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelFilteringOptionRetailV2alpha value: $value');
  }
}
