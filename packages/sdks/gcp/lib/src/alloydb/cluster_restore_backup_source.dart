// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterRestoreBackupSource {
  /// The name of the backup that this cluster is restored from.
  final pulumi.Input<String> backupName;

  /// Creates a new [ClusterRestoreBackupSource].
  /// [backupName] The name of the backup that this cluster is restored from.
  const ClusterRestoreBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
    };
  }

  factory ClusterRestoreBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterRestoreBackupSource(
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
    );
  }
}
