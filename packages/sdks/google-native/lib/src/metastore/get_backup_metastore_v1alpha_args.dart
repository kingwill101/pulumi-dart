// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1alpha_get_backup_metastore_v1alpha_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_get_backup_metastore_v1alpha_args_doc}
class GetBackupMetastoreV1alphaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetBackupMetastoreV1alphaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetBackupMetastoreV1alphaArgs({
    required this.backupId,
    required this.location,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'location': location,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetBackupMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupMetastoreV1alphaArgs(
      backupId: (map['backupId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

