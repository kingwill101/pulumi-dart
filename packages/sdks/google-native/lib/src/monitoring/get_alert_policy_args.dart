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
  GetAlertPolicyArgs({
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
      alertPolicyId: (map['alertPolicyId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

