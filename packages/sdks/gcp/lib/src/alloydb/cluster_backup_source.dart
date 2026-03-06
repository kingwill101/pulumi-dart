// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBackupSource {
  /// The name of the backup resource.
  final pulumi.Input<String>? backupName;

  /// Creates a new [ClusterBackupSource].
  /// [backupName] The name of the backup resource.
  const ClusterBackupSource({
    this.backupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': ?backupName,
    };
  }

  factory ClusterBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterBackupSource(
      backupName: (() { final guardedValue = map['backupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

