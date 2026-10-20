import 'package:pulumi/pulumi.dart' as pulumi;

/// The search algorithm specified for the Study.
enum GoogleCloudAiplatformV1beta1StudySpecAlgorithm implements pulumi.PulumiEnum<String> {
  algorithmUnspecified("ALGORITHM_UNSPECIFIED"),
  gridSearch("GRID_SEARCH"),
  randomSearch("RANDOM_SEARCH");

  const GoogleCloudAiplatformV1beta1StudySpecAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1beta1StudySpecAlgorithm fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1StudySpecAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1StudySpecAlgorithm value: $value');
  }
}
