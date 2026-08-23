// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBackupdrBackupSource {
  /// The name of the BackupDR backup resource.
  final pulumi.Input<String> backup;

  /// Creates a new [GetClusterBackupdrBackupSource].
  /// [backup] The name of the BackupDR backup resource.
  const GetClusterBackupdrBackupSource({
    required this.backup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
    };
  }

  factory GetClusterBackupdrBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterBackupdrBackupSource(
      backup: pulumi.Input.fromValue(map['backup'] as String),
    );
  }
}
