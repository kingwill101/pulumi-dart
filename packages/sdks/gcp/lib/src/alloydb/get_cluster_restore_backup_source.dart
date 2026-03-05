// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterRestoreBackupSource {
  /// The name of the backup that this cluster is restored from.
  final pulumi.Input<String> backupName;

  /// Creates a new [GetClusterRestoreBackupSource].
  /// [backupName] The name of the backup that this cluster is restored from.
  GetClusterRestoreBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
    };
  }

  factory GetClusterRestoreBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterRestoreBackupSource(
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
    );
  }
}

