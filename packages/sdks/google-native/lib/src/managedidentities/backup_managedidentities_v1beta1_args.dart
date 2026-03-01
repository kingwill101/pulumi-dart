// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_backup_managedidentities_v1beta1_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_backup_managedidentities_v1beta1_args_doc}
class BackupManagedidentitiesV1beta1Args {
  /// Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  final pulumi.Input<String> backupId;
  /// Optional. A short description of the backup.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> domainId;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  /// Creates a new [BackupManagedidentitiesV1beta1Args].
  /// [backupId] Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.
  /// [description] Optional. A short description of the backup.
  /// [domainId] Required.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [project] Optional.
  BackupManagedidentitiesV1beta1Args({
    required pulumi.Output<String> backupId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> domainId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asInput<String>(domainId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'description': ?description,
      'domainId': domainId,
      'labels': ?labels,
      'project': ?project,
    };
  }

  factory BackupManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return BackupManagedidentitiesV1beta1Args(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainId: pulumi.Output.create<String>(map['domainId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

