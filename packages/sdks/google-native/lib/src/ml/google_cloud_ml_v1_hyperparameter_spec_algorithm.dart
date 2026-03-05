/// Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
enum GoogleCloudMlV1HyperparameterSpecAlgorithm {
  algorithmUnspecified("ALGORITHM_UNSPECIFIED"),
  gridSearch("GRID_SEARCH"),
  randomSearch("RANDOM_SEARCH");

  const GoogleCloudMlV1HyperparameterSpecAlgorithm(this.wireValue);
  final String wireValue;

  static GoogleCloudMlV1HyperparameterSpecAlgorithm fromValue(String value) {
    for (final item in GoogleCloudMlV1HyperparameterSpecAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1HyperparameterSpecAlgorithm value: $value');
  }
}

