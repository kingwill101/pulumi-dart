/// Required. Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
enum ExecutionTemplateScaleTier {
  scaleTierUnspecified("SCALE_TIER_UNSPECIFIED"),
  basic("BASIC"),
  standard1("STANDARD_1"),
  premium1("PREMIUM_1"),
  basicGpu("BASIC_GPU"),
  basicTpu("BASIC_TPU"),
  custom("CUSTOM");

  const ExecutionTemplateScaleTier(this.wireValue);
  final String wireValue;

  static ExecutionTemplateScaleTier fromValue(String value) {
    for (final item in ExecutionTemplateScaleTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExecutionTemplateScaleTier value: $value');
  }
}
