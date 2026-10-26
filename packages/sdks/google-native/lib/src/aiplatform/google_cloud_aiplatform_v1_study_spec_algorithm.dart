import 'package:pulumi/pulumi.dart' as pulumi;

/// The search algorithm specified for the Study.
enum GoogleCloudAiplatformV1StudySpecAlgorithm implements pulumi.PulumiEnum<String> {
  algorithmUnspecified("ALGORITHM_UNSPECIFIED"),
  gridSearch("GRID_SEARCH"),
  randomSearch("RANDOM_SEARCH");

  const GoogleCloudAiplatformV1StudySpecAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1StudySpecAlgorithm fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1StudySpecAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1StudySpecAlgorithm value: $value');
  }
}
