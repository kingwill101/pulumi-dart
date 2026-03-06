// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterManagedBackupSource {
  /// Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  final pulumi.Input<String> backup;

  /// Creates a new [ClusterManagedBackupSource].
  /// [backup] Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  const ClusterManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory ClusterManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return ClusterManagedBackupSource(
      backup: pulumi.Input.fromValue(map['backup'] as String),
    );
  }
}

