import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The launch stage of the monitored resource definition.
enum MonitoredResourceDescriptorLaunchStage implements pulumi.PulumiEnum<String> {
  launchStageUnspecified("LAUNCH_STAGE_UNSPECIFIED"),
  unimplemented("UNIMPLEMENTED"),
  prelaunch("PRELAUNCH"),
  earlyAccess("EARLY_ACCESS"),
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED");

  const MonitoredResourceDescriptorLaunchStage(this.wireValue);
  @override
  final String wireValue;

  static MonitoredResourceDescriptorLaunchStage fromValue(String value) {
    for (final item in MonitoredResourceDescriptorLaunchStage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoredResourceDescriptorLaunchStage value: $value');
  }
}
