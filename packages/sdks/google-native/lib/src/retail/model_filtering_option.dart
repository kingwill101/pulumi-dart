import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
enum ModelFilteringOption implements pulumi.PulumiEnum<String> {
  recommendationsFilteringOptionUnspecified("RECOMMENDATIONS_FILTERING_OPTION_UNSPECIFIED"),
  recommendationsFilteringDisabled("RECOMMENDATIONS_FILTERING_DISABLED"),
  recommendationsFilteringEnabled("RECOMMENDATIONS_FILTERING_ENABLED");

  const ModelFilteringOption(this.wireValue);
  @override
  final String wireValue;

  static ModelFilteringOption fromValue(String value) {
    for (final item in ModelFilteringOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelFilteringOption value: $value');
  }
}
