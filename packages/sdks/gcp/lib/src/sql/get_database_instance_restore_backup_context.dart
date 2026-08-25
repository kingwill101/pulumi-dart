// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceRestoreBackupContext {
  /// The ID of the backup run to restore from.
  final pulumi.Input<int> backupRunId;
  /// The ID of the instance that the backup was taken from.
  final pulumi.Input<String> instanceId;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String> project;

  /// Creates a new [GetDatabaseInstanceRestoreBackupContext].
  /// [backupRunId] The ID of the backup run to restore from.
  /// [instanceId] The ID of the instance that the backup was taken from.
  /// [project] The ID of the project in which the resource belongs.
  const GetDatabaseInstanceRestoreBackupContext({
    required this.backupRunId,
    required this.instanceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRunId': backupRunId,
      'instanceId': instanceId,
      'project': project,
    };
  }

  factory GetDatabaseInstanceRestoreBackupContext.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceRestoreBackupContext(
      backupRunId: pulumi.Input.fromValue((map['backupRunId'] as num).toInt()),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
