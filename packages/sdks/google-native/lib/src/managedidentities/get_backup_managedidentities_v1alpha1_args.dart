// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_get_backup_managedidentities_v1alpha1_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_get_backup_managedidentities_v1alpha1_args_doc}
class GetBackupManagedidentitiesV1alpha1Args {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupManagedidentitiesV1alpha1Args].
  /// [backupId] Required.
  /// [domainId] Required.
  /// [project] Optional.
  const GetBackupManagedidentitiesV1alpha1Args({
    required this.backupId,
    required this.domainId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'domainId': domainId,
      'project': ?project,
    };
  }

  factory GetBackupManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetBackupManagedidentitiesV1alpha1Args(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

