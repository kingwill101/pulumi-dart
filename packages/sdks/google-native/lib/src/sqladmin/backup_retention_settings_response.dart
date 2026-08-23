// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// We currently only support backup retention by specifying the number of backups we will retain.
class BackupRetentionSettingsResponse {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  final pulumi.Input<int> retainedBackups;
  /// The unit that 'retained_backups' represents.
  final pulumi.Input<String> retentionUnit;

  /// Creates a new [BackupRetentionSettingsResponse].
  /// [retainedBackups] Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  /// [retentionUnit] The unit that 'retained_backups' represents.
  const BackupRetentionSettingsResponse({
    required this.retainedBackups,
    required this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainedBackups': retainedBackups,
      'retentionUnit': retentionUnit,
    };
  }

  factory BackupRetentionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BackupRetentionSettingsResponse(
      retainedBackups: pulumi.Input.fromValue(map['retainedBackups'] as int),
      retentionUnit: pulumi.Input.fromValue(map['retentionUnit'] as String),
    );
  }
}
