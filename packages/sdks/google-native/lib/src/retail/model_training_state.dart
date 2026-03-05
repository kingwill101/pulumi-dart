/// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
enum ModelTrainingState {
  trainingStateUnspecified("TRAINING_STATE_UNSPECIFIED"),
  paused("PAUSED"),
  training("TRAINING");

  const ModelTrainingState(this.wireValue);
  final String wireValue;

  static ModelTrainingState fromValue(String value) {
    for (final item in ModelTrainingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelTrainingState value: $value');
  }
}

