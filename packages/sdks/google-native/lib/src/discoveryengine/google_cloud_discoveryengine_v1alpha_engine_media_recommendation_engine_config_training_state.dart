/// The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train engine in order to control cost. If not specified: the default value for `CreateEngine` method is `TRAINING`. The default value for `UpdateEngine` method is to keep the state the same as before.
enum GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState {
  trainingStateUnspecified("TRAINING_STATE_UNSPECIFIED"),
  paused("PAUSED"),
  training("TRAINING");

  const GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState
  fromValue(String value) {
    for (final item
        in GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigTrainingState value: $value',
    );
  }
}
