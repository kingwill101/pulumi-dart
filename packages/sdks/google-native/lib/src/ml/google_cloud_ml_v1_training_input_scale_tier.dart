/// Required. Specifies the machine types, the number of replicas for workers and parameter servers.
enum GoogleCloudMlV1TrainingInputScaleTier {
  basic("BASIC"),
  standard1("STANDARD_1"),
  premium1("PREMIUM_1"),
  basicGpu("BASIC_GPU"),
  basicTpu("BASIC_TPU"),
  custom("CUSTOM");

  const GoogleCloudMlV1TrainingInputScaleTier(this.wireValue);
  final String wireValue;

  static GoogleCloudMlV1TrainingInputScaleTier fromValue(String value) {
    for (final item in GoogleCloudMlV1TrainingInputScaleTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1TrainingInputScaleTier value: $value');
  }
}

