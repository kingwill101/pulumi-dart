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

  factory GetBackupManagedidentitiesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetBackupManagedidentitiesV1beta1Args(
      backupId: (map['backupId'] as String).input(),
      domainId: (map['domainId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

