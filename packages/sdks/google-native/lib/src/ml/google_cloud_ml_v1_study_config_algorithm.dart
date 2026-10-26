import 'package:pulumi/pulumi.dart' as pulumi;

/// The search algorithm specified for the study.
enum GoogleCloudMlV1StudyConfigAlgorithm implements pulumi.PulumiEnum<String> {
  algorithmUnspecified("ALGORITHM_UNSPECIFIED"),
  gaussianProcessBandit("GAUSSIAN_PROCESS_BANDIT"),
  gridSearch("GRID_SEARCH"),
  randomSearch("RANDOM_SEARCH");

  const GoogleCloudMlV1StudyConfigAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudMlV1StudyConfigAlgorithm fromValue(String value) {
    for (final item in GoogleCloudMlV1StudyConfigAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1StudyConfigAlgorithm value: $value');
  }
}
