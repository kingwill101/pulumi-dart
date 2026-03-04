// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1beta_get_backup_metastore_v1beta_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1beta_get_backup_metastore_v1beta_args_doc}
class GetBackupMetastoreV1betaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetBackupMetastoreV1betaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetBackupMetastoreV1betaArgs({
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

  factory GetBackupMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupMetastoreV1betaArgs(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
