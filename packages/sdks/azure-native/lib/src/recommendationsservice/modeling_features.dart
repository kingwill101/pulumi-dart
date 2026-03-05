/// Modeling features controls the set of supported scenarios\models being computed. This can only be set at Modeling creation.
enum ModelingFeatures {
  valueBasic("Basic"),
  valueStandard("Standard"),
  valuePremium("Premium");

  const ModelingFeatures(this.wireValue);
  final String wireValue;

  static ModelingFeatures fromValue(String value) {
    for (final item in ModelingFeatures.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelingFeatures value: $value');
  }
}

