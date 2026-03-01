// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1_backup_args_doc}
class BackupArgs {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  /// Creates a new [BackupArgs].
  /// [backupId] Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  /// [domainId] Required.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [project] Optional.
  BackupArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> domainId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      domainId = pulumi.Input.asInput<String>(domainId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'domainId': domainId,
      'labels': ?labels,
      'project': ?project,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      domainId: pulumi.Output.create<String>(map['domainId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

