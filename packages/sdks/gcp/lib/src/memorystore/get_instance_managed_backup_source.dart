// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceManagedBackupSource {
  /// Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  final pulumi.Input<String> backup;

  /// Creates a new [GetInstanceManagedBackupSource].
  /// [backup] Example: 'projects/{project}/locations/{location}/backupCollections/{collection}/backups/{backup}'.
  GetInstanceManagedBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory GetInstanceManagedBackupSource.fromMap(Map<String, dynamic> map) {
    return GetInstanceManagedBackupSource(
      backup: (map['backup'] as String).input(),
    );
  }
}

