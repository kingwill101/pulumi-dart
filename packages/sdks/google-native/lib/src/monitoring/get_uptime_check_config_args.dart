// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_uptime_check_config_args_doc}
/// Arguments for getUptimeCheckConfig.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_uptime_check_config_args_doc}
class GetUptimeCheckConfigArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> uptimeCheckConfigId;

  /// Creates a new [GetUptimeCheckConfigArgs].
  /// [project] Optional.
  /// [uptimeCheckConfigId] Required.
  GetUptimeCheckConfigArgs({
    this.project,
    required this.uptimeCheckConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'uptimeCheckConfigId': uptimeCheckConfigId,
    };
  }

  factory GetUptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckConfigArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      uptimeCheckConfigId: (map['uptimeCheckConfigId'] as String).input(),
    );
  }
}

