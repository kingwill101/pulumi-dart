import 'package:pulumi/pulumi.dart' as pulumi;

/// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
enum GoogleCloudAiplatformV1StudySpecObservationNoise implements pulumi.PulumiEnum<String> {
  observationNoiseUnspecified("OBSERVATION_NOISE_UNSPECIFIED"),
  low("LOW"),
  high("HIGH");

  const GoogleCloudAiplatformV1StudySpecObservationNoise(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1StudySpecObservationNoise fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1StudySpecObservationNoise.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1StudySpecObservationNoise value: $value');
  }
}
