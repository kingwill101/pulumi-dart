// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_looker_v1_get_instance_backup_iam_policy_args_doc}
/// Arguments for getInstanceBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_looker_v1_get_instance_backup_iam_policy_args_doc}
class GetInstanceBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [instanceId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetInstanceBackupIamPolicyArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'instanceId': instanceId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetInstanceBackupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupIamPolicyArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

