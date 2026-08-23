/// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
enum FeatureStoreFeatureValueType {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  bool_("BOOL"),
  boolArray("BOOL_ARRAY"),
  double_("DOUBLE"),
  doubleArray("DOUBLE_ARRAY"),
  int64("INT64"),
  int64Array("INT64_ARRAY"),
  string_("STRING"),
  stringArray("STRING_ARRAY"),
  bytes("BYTES");

  const FeatureStoreFeatureValueType(this.wireValue);
  final String wireValue;

  static FeatureStoreFeatureValueType fromValue(String value) {
    for (final item in FeatureStoreFeatureValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureStoreFeatureValueType value: $value');
  }
}
