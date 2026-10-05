import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The distance measure used in nearest neighbor search.
enum GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType implements pulumi.PulumiEnum<String> {
  distanceMeasureTypeUnspecified("DISTANCE_MEASURE_TYPE_UNSPECIFIED"),
  squaredL2Distance("SQUARED_L2_DISTANCE"),
  cosineDistance("COSINE_DISTANCE"),
  dotProductDistance("DOT_PRODUCT_DISTANCE");

  const GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType value: $value');
  }
}
