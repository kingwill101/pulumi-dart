/// Sampler of distributed tracing. OFF is the default value.
enum GoogleCloudApigeeV1TraceSamplingConfigSampler {
  samplerUnspecified("SAMPLER_UNSPECIFIED"),
  off("OFF"),
  probability("PROBABILITY");

  const GoogleCloudApigeeV1TraceSamplingConfigSampler(this.value);
  final String value;

  static GoogleCloudApigeeV1TraceSamplingConfigSampler fromValue(String value) {
    for (final item in GoogleCloudApigeeV1TraceSamplingConfigSampler.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudApigeeV1TraceSamplingConfigSampler value: $value');
  }
}

