// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_restore_plan_restore_volume_restore_iam_policy_args_doc}
/// Arguments for getRestorePlanRestoreVolumeRestoreIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_restore_plan_restore_volume_restore_iam_policy_args_doc}
class GetRestorePlanRestoreVolumeRestoreIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;
  final pulumi.Input<String> volumeRestoreId;

  /// Creates a new [GetRestorePlanRestoreVolumeRestoreIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [restoreId] Required.
  /// [restorePlanId] Required.
  /// [volumeRestoreId] Required.
  const GetRestorePlanRestoreVolumeRestoreIamPolicyArgs({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
    required this.volumeRestoreId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'restoreId': restoreId,
      'restorePlanId': restorePlanId,
      'volumeRestoreId': volumeRestoreId,
    };
  }

  factory GetRestorePlanRestoreVolumeRestoreIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanRestoreVolumeRestoreIamPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreId: pulumi.Input.fromValue(map['restoreId'] as String),
      restorePlanId: pulumi.Input.fromValue(map['restorePlanId'] as String),
      volumeRestoreId: pulumi.Input.fromValue(map['volumeRestoreId'] as String),
    );
  }
}
