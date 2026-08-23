// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_alert_policy_args_doc}
/// Arguments for getAlertPolicy.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_alert_policy_args_doc}
class GetAlertPolicyArgs {
  final pulumi.Input<String> alertPolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAlertPolicyArgs].
  /// [alertPolicyId] Required.
  /// [project] Optional.
  const GetAlertPolicyArgs({
    required this.alertPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertPolicyId': alertPolicyId,
      'project': ?project,
    };
  }

  factory GetAlertPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertPolicyArgs(
      alertPolicyId: pulumi.Input.fromValue(map['alertPolicyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
