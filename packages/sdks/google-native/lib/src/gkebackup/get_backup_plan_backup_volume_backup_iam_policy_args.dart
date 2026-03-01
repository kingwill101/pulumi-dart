// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_backup_plan_backup_volume_backup_iam_policy_args_doc}
/// Arguments for getBackupPlanBackupVolumeBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_backup_plan_backup_volume_backup_iam_policy_args_doc}
class GetBackupPlanBackupVolumeBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> volumeBackupId;

  /// Creates a new [GetBackupPlanBackupVolumeBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [backupPlanId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [volumeBackupId] Required.
  GetBackupPlanBackupVolumeBackupIamPolicyArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> backupPlanId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> volumeBackupId,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      backupPlanId = pulumi.Input.asInput<String>(backupPlanId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      volumeBackupId = pulumi.Input.asInput<String>(volumeBackupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'backupPlanId': backupPlanId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'volumeBackupId': volumeBackupId,
    };
  }

  factory GetBackupPlanBackupVolumeBackupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanBackupVolumeBackupIamPolicyArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      backupPlanId: pulumi.Output.create<String>(map['backupPlanId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      volumeBackupId: pulumi.Output.create<String>(map['volumeBackupId'] as String),
    );
  }
}

