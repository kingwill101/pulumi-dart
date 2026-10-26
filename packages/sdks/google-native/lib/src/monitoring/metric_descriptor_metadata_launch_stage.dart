import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. Must use the MetricDescriptor.launch_stage instead.
enum MetricDescriptorMetadataLaunchStage implements pulumi.PulumiEnum<String> {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MetricDescriptorMetadataLaunchStage(this.wireValue);
  @override
  final String wireValue;

  static MetricDescriptorMetadataLaunchStage fromValue(String value) {
    for (final item in MetricDescriptorMetadataLaunchStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricDescriptorMetadataLaunchStage value: $value');
  }
}
