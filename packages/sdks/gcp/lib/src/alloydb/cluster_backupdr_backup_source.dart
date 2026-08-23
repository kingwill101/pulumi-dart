// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBackupdrBackupSource {
  /// The name of the BackupDR backup resource.
  final pulumi.Input<String>? backup;

  /// Creates a new [ClusterBackupdrBackupSource].
  /// [backup] The name of the BackupDR backup resource.
  const ClusterBackupdrBackupSource({
    this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?backup,
    };
  }

  factory ClusterBackupdrBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterBackupdrBackupSource(
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
