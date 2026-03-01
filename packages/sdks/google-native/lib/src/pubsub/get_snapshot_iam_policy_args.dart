// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_snapshot_iam_policy_args_doc}
/// Arguments for getSnapshotIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_snapshot_iam_policy_args_doc}
class GetSnapshotIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  /// Creates a new [GetSnapshotIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [snapshotId] Required.
  GetSnapshotIamPolicyArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> snapshotId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      snapshotId = pulumi.Input.asInput<String>(snapshotId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'snapshotId': snapshotId,
    };
  }

  factory GetSnapshotIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      snapshotId: pulumi.Output.create<String>(map['snapshotId'] as String),
    );
  }
}

