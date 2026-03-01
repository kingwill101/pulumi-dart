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
    pulumi.Output<String>? project,
    required pulumi.Output<String> uptimeCheckConfigId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      uptimeCheckConfigId = pulumi.Input.asInput<String>(uptimeCheckConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'uptimeCheckConfigId': uptimeCheckConfigId,
    };
  }

  factory GetUptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetUptimeCheckConfigArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      uptimeCheckConfigId: pulumi.Output.create<String>(map['uptimeCheckConfigId'] as String),
    );
  }
}

