// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_backup_alloydb_v1alpha_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_backup_alloydb_v1alpha_args_doc}
class GetBackupAlloydbV1alphaArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupAlloydbV1alphaArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetBackupAlloydbV1alphaArgs({
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

  factory GetBackupAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupAlloydbV1alphaArgs(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
