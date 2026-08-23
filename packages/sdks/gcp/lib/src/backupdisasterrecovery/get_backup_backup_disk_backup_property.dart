// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupBackupDiskBackupProperty {
  /// Indicates whether the backup is application-consistent.
  final pulumi.Input<bool> guestFlush;

  /// Creates a new [GetBackupBackupDiskBackupProperty].
  /// [guestFlush] Indicates whether the backup is application-consistent.
  const GetBackupBackupDiskBackupProperty({
    required this.guestFlush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestFlush': guestFlush,
    };
  }

  factory GetBackupBackupDiskBackupProperty.fromMap(Map<String, dynamic> map) {
    return GetBackupBackupDiskBackupProperty(
      guestFlush: pulumi.Input.fromValue(map['guestFlush'] as bool),
    );
  }
}
