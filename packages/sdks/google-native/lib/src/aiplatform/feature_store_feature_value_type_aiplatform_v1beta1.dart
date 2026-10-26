import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
enum FeatureStoreFeatureValueTypeAiplatformV1beta1 implements pulumi.PulumiEnum<String> {
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

  const FeatureStoreFeatureValueTypeAiplatformV1beta1(this.wireValue);
  @override
  final String wireValue;

  static FeatureStoreFeatureValueTypeAiplatformV1beta1 fromValue(String value) {
    for (final item in FeatureStoreFeatureValueTypeAiplatformV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureStoreFeatureValueTypeAiplatformV1beta1 value: $value');
  }
}
