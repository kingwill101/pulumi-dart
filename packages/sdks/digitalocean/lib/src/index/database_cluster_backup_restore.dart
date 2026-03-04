// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseClusterBackupRestore {
  /// The timestamp of an existing database cluster backup in ISO8601 combined date and time format. The most recent backup will be used if excluded.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final pulumi.Input<String>? backupCreatedAt;

  /// The name of an existing database cluster from which the backup will be restored.
  final pulumi.Input<String> databaseName;

  /// Creates a new [DatabaseClusterBackupRestore].
  /// [backupCreatedAt] The timestamp of an existing database cluster backup in ISO8601 combined date and time format. The most recent backup will be used if excluded.
  /// [databaseName] The name of an existing database cluster from which the backup will be restored.
  DatabaseClusterBackupRestore({
    this.backupCreatedAt,
    required this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupCreatedAt': ?backupCreatedAt,
      'databaseName': databaseName,
    };
  }

  factory DatabaseClusterBackupRestore.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterBackupRestore(
      backupCreatedAt: (() {
        final guardedValue = map['backupCreatedAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
    );
  }
}
