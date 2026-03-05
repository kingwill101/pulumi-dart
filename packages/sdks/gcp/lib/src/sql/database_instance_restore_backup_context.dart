// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceRestoreBackupContext {
  /// The ID of the backup run to restore from.
  final pulumi.Input<int> backupRunId;
  /// The ID of the instance that the backup was taken from. If left empty,
  /// this instance's ID will be used.
  final pulumi.Input<String>? instanceId;
  /// The full project ID of the source instance.`
  final pulumi.Input<String>? project;

  /// Creates a new [DatabaseInstanceRestoreBackupContext].
  /// [backupRunId] The ID of the backup run to restore from.
  /// [instanceId] The ID of the instance that the backup was taken from. If left empty,
  /// [project] The full project ID of the source instance.`
  DatabaseInstanceRestoreBackupContext({
    required this.backupRunId,
    this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRunId': backupRunId,
      'instanceId': ?instanceId,
      'project': ?project,
    };
  }

  factory DatabaseInstanceRestoreBackupContext.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceRestoreBackupContext(
      backupRunId: pulumi.Input.fromValue(map['backupRunId'] as int),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

