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
    required this.backupId,
    required this.backupPlanId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.volumeBackupId,
  });

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
      backupId: (map['backupId'] as String).input(),
      backupPlanId: (map['backupPlanId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      volumeBackupId: (map['volumeBackupId'] as String).input(),
    );
  }
}

