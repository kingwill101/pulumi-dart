import 'package:pulumi/pulumi.dart' as pulumi;

/// Sampler of distributed tracing. OFF is the default value.
enum GoogleCloudApigeeV1TraceSamplingConfigSampler implements pulumi.PulumiEnum<String> {
  samplerUnspecified("SAMPLER_UNSPECIFIED"),
  off("OFF"),
  probability("PROBABILITY");

  const GoogleCloudApigeeV1TraceSamplingConfigSampler(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudApigeeV1TraceSamplingConfigSampler fromValue(String value) {
    for (final item in GoogleCloudApigeeV1TraceSamplingConfigSampler.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudApigeeV1TraceSamplingConfigSampler value: $value');
  }
}
