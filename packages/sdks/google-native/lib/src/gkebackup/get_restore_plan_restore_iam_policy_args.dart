// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_plan_restore_iam_policy_args_doc}
/// Arguments for getRestorePlanRestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_plan_restore_iam_policy_args_doc}
class GetRestorePlanRestoreIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [GetRestorePlanRestoreIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [restoreId] Required.
  /// [restorePlanId] Required.
  GetRestorePlanRestoreIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'restoreId': restoreId,
      'restorePlanId': restorePlanId,
    };
  }

  factory GetRestorePlanRestoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanRestoreIamPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      restoreId: pulumi.Input.fromValue(map['restoreId'] as String),
      restorePlanId: pulumi.Input.fromValue(map['restorePlanId'] as String),
    );
  }
}
