// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1beta1_get_backup_managedidentities_v1beta1_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1beta1_get_backup_managedidentities_v1beta1_args_doc}
class GetBackupManagedidentitiesV1beta1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupManagedidentitiesV1beta1Args].
  /// [backupId] Required.
  /// [domainId] Required.
  /// [project] Optional.
  GetBackupManagedidentitiesV1beta1Args({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> domainId,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      domainId = pulumi.Input.asInput<String>(domainId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'domainId': domainId,
      'project': ?project,
    };
  }

  factory GetBackupManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetBackupManagedidentitiesV1beta1Args(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      domainId: pulumi.Output.create<String>(map['domainId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

