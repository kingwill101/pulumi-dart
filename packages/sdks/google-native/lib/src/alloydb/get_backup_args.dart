// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1_get_backup_args_doc}
/// Arguments for getBackup.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_get_backup_args_doc}
class GetBackupArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupArgs].
  /// [backupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBackupArgs({
    required pulumi.Output<String> backupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs(
      backupId: pulumi.Output.create<String>(map['backupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

