// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_esc_environment_schedule_args_doc}
/// The set of arguments for EnvironmentSchedule.
/// {@endtemplate}
/// {@macro pulumi_api_esc_environment_schedule_args_doc}
class EnvironmentScheduleArgs {
  /// The environment name
  final pulumi.Input<String> envName;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// The schedule cron
  final pulumi.Input<String>? scheduleCron;
  /// The schedule ID
  final pulumi.Input<String>? scheduleID;
  /// The schedule once
  final pulumi.Input<String>? scheduleOnce;
  /// The secret rotation request
  final pulumi.Input<dynamic>? secretRotationRequest;

  /// Creates a new [EnvironmentScheduleArgs].
  /// [envName] The environment name
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [scheduleCron] The schedule cron
  /// [scheduleID] The schedule ID
  /// [scheduleOnce] The schedule once
  /// [secretRotationRequest] The secret rotation request
  const EnvironmentScheduleArgs({
    required this.envName,
    required this.orgName,
    required this.projectName,
    this.scheduleCron,
    this.scheduleID,
    this.scheduleOnce,
    this.secretRotationRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envName': envName,
      'orgName': orgName,
      'projectName': projectName,
      'scheduleCron': ?scheduleCron,
      'scheduleID': ?scheduleID,
      'scheduleOnce': ?scheduleOnce,
      'secretRotationRequest': ?secretRotationRequest,
    };
  }

  factory EnvironmentScheduleArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentScheduleArgs(
      envName: pulumi.Input.fromValue(map['envName'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      scheduleCron: (() { final guardedValue = map['scheduleCron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleID: (() { final guardedValue = map['scheduleID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleOnce: (() { final guardedValue = map['scheduleOnce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRotationRequest: (() { final guardedValue = map['secretRotationRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
