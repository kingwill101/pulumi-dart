// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_deployments_scheduled_deployment_args_doc}
/// The set of arguments for ScheduledDeployment.
/// {@endtemplate}
/// {@macro pulumi_api_deployments_scheduled_deployment_args_doc}
class ScheduledDeploymentArgs {
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// Deployment request payload to execute when the schedule fires. This has the same shape and semantics as CreateDeploymentRequest used for immediate deployments.
  final pulumi.Input<dynamic>? request;
  /// Cron expression defining a recurring schedule for this deployment. When set, scheduleOnce must be null. Uses standard 5-field cron syntax (MIN HOUR DOM MON DOW) and is evaluated in UTC.
  final pulumi.Input<String>? scheduleCron;
  /// The schedule identifier
  final pulumi.Input<String>? scheduleID;
  /// Single point-in-time schedule for this deployment. When set, scheduleCron must be null. The value must be an ISO 8601 timestamp with timezone.
  final pulumi.Input<String>? scheduleOnce;
  /// The stack name
  final pulumi.Input<String> stackName;

  /// Creates a new [ScheduledDeploymentArgs].
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [request] Deployment request payload to execute when the schedule fires. This has the same shape and semantics as CreateDeploymentRequest used for immediate deployments.
  /// [scheduleCron] Cron expression defining a recurring schedule for this deployment. When set, scheduleOnce must be null. Uses standard 5-field cron syntax (MIN HOUR DOM MON DOW) and is evaluated in UTC.
  /// [scheduleID] The schedule identifier
  /// [scheduleOnce] Single point-in-time schedule for this deployment. When set, scheduleCron must be null. The value must be an ISO 8601 timestamp with timezone.
  /// [stackName] The stack name
  const ScheduledDeploymentArgs({
    required this.orgName,
    required this.projectName,
    this.request,
    this.scheduleCron,
    this.scheduleID,
    this.scheduleOnce,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orgName': orgName,
      'projectName': projectName,
      'request': ?request,
      'scheduleCron': ?scheduleCron,
      'scheduleID': ?scheduleID,
      'scheduleOnce': ?scheduleOnce,
      'stackName': stackName,
    };
  }

  factory ScheduledDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledDeploymentArgs(
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scheduleCron: (() { final guardedValue = map['scheduleCron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleID: (() { final guardedValue = map['scheduleID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleOnce: (() { final guardedValue = map['scheduleOnce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
    );
  }
}
