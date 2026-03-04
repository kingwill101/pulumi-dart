// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigSyntheticMonitorCloudFunctionV2 {
  /// A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  final pulumi.Input<String> name;

  /// Creates a new [UptimeCheckConfigSyntheticMonitorCloudFunctionV2].
  /// [name] A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  UptimeCheckConfigSyntheticMonitorCloudFunctionV2({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory UptimeCheckConfigSyntheticMonitorCloudFunctionV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return UptimeCheckConfigSyntheticMonitorCloudFunctionV2(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
