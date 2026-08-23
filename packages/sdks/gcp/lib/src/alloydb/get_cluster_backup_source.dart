// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterBackupSource {
  /// The name of the backup resource.
  final pulumi.Input<String> backupName;

  /// Creates a new [GetClusterBackupSource].
  /// [backupName] The name of the backup resource.
  const GetClusterBackupSource({
    required this.backupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupName': backupName,
    };
  }

  factory GetClusterBackupSource.fromMap(Map<String, dynamic> map) {
    return GetClusterBackupSource(
      backupName: pulumi.Input.fromValue(map['backupName'] as String),
    );
  }
}
