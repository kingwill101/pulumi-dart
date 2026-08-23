// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanComputeInstanceBackupPlanProperties {
  /// Indicates whether to perform a guest flush operation before taking a
  /// compute instance backup. When set to true, the system will attempt
  /// to ensure application-consistent backups.
  final pulumi.Input<bool> guestFlush;

  /// Creates a new [BackupPlanComputeInstanceBackupPlanProperties].
  /// [guestFlush] Indicates whether to perform a guest flush operation before taking a
  const BackupPlanComputeInstanceBackupPlanProperties({
    required this.guestFlush,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestFlush': guestFlush,
    };
  }

  factory BackupPlanComputeInstanceBackupPlanProperties.fromMap(Map<String, dynamic> map) {
    return BackupPlanComputeInstanceBackupPlanProperties(
      guestFlush: pulumi.Input.fromValue(map['guestFlush'] as bool),
    );
  }
}
