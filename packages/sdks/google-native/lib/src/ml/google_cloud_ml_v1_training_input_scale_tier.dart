import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Specifies the machine types, the number of replicas for workers and parameter servers.
enum GoogleCloudMlV1TrainingInputScaleTier implements pulumi.PulumiEnum<String> {
  basic("BASIC"),
  standard1("STANDARD_1"),
  premium1("PREMIUM_1"),
  basicGpu("BASIC_GPU"),
  basicTpu("BASIC_TPU"),
  custom("CUSTOM");

  const GoogleCloudMlV1TrainingInputScaleTier(this.wireValue);
  @override
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
