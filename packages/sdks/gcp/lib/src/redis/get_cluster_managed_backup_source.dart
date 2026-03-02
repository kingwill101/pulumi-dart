// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterManagedBackupSource {
  /// Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  final pulumi.Input<String> backup;

  /// Creates a new [GetClusterManagedBackupSource].
  /// [backup] Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  GetClusterManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory GetClusterManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterManagedBackupSource(
      backup: (map['backup'] as String).input(),
    );
  }
}

