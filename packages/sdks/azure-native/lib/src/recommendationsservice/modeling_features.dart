/// Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
enum ModelingFeatures {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const ModelingFeatures(this.value);
  final String value;

  static ModelingFeatures fromValue(String value) {
    for (final item in ModelingFeatures.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingFeatures value: $value');
  }
}

