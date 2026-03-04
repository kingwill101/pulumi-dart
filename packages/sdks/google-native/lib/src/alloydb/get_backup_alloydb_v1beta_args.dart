// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1beta_get_backup_alloydb_v1beta_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1beta_get_backup_alloydb_v1beta_args_doc}
class GetBackupAlloydbV1betaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupAlloydbV1betaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBackupAlloydbV1betaArgs({
    required this.backupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupAlloydbV1betaArgs(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
