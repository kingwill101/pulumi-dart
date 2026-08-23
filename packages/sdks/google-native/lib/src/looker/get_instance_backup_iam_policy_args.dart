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
  const GetInstanceBackupIamPolicyArgs({
    required this.backupId,
    required this.instanceId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
