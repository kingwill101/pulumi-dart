// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanDiskBackupPlanProperties {
  /// Indicates whether to perform a guest flush operation before taking a disk
  /// backup. When set to true, the system will attempt to ensure
  /// application-consistent backups. When set to false, the system will
  /// create crash-consistent backups.
  final pulumi.Input<bool> guestFlush;

  /// Creates a new [BackupPlanDiskBackupPlanProperties].
  /// [guestFlush] Indicates whether to perform a guest flush operation before taking a disk
  const BackupPlanDiskBackupPlanProperties({
    required this.guestFlush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestFlush': guestFlush,
    };
  }

  factory BackupPlanDiskBackupPlanProperties.fromMap(Map<String, dynamic> map) {
    return BackupPlanDiskBackupPlanProperties(
      guestFlush: pulumi.Input.fromValue(map['guestFlush'] as bool),
    );
  }
}
