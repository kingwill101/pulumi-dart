/// The multi-trial Neural Architecture Search (NAS) algorithm type. Defaults to `REINFORCEMENT_LEARNING`.
enum GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm {
  multiTrialAlgorithmUnspecified("MULTI_TRIAL_ALGORITHM_UNSPECIFIED"),
  reinforcementLearning("REINFORCEMENT_LEARNING"),
  gridSearch("GRID_SEARCH");

  const GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm(this.wireValue);
  final String wireValue;

  static GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMultiTrialAlgorithm value: $value');
  }
}
