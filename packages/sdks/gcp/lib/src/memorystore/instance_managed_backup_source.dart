// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceManagedBackupSource {
  /// Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  final pulumi.Input<String> backup;

  /// Creates a new [InstanceManagedBackupSource].
  /// [backup] Example: `projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}`.
  const InstanceManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory InstanceManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return InstanceManagedBackupSource(
      backup: pulumi.Input.fromValue(map['backup'] as String),
    );
  }
}

