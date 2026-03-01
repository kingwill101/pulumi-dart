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
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> restoreId,
    required pulumi.Output<String> restorePlanId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      restoreId = pulumi.Input.asInput<String>(restoreId),
      restorePlanId = pulumi.Input.asInput<String>(restorePlanId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      restoreId: pulumi.Output.create<String>(map['restoreId'] as String),
      restorePlanId: pulumi.Output.create<String>(map['restorePlanId'] as String),
    );
  }
}

