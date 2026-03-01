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
  GetRestorePlanRestoreVolumeRestoreIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> restoreId,
    required pulumi.Output<String> restorePlanId,
    required pulumi.Output<String> volumeRestoreId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      restoreId = pulumi.Input.asInput<String>(restoreId),
      restorePlanId = pulumi.Input.asInput<String>(restorePlanId),
      volumeRestoreId = pulumi.Input.asInput<String>(volumeRestoreId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      restoreId: pulumi.Output.create<String>(map['restoreId'] as String),
      restorePlanId: pulumi.Output.create<String>(map['restorePlanId'] as String),
      volumeRestoreId: pulumi.Output.create<String>(map['volumeRestoreId'] as String),
    );
  }
}

