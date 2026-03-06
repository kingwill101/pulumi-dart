// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasePropertyLocalStandbyDb {
  /// The date and time the Autonomous Data Guard role was switched for the
  /// standby Autonomous Database.
  final pulumi.Input<String> dataGuardRoleChangedTime;
  /// The date and time the Disaster Recovery role was switched for the standby
  /// Autonomous Database.
  final pulumi.Input<String> disasterRecoveryRoleChangedTime;
  /// The amount of time, in seconds, that the data of the standby database lags
  /// in comparison to the data of the primary database.
  final pulumi.Input<String> lagTimeDuration;
  /// The additional details about the current lifecycle state of the
  /// Autonomous Database.
  final pulumi.Input<String> lifecycleDetails;
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// STOPPING
  /// STOPPED
  /// STARTING
  /// TERMINATING
  /// TERMINATED
  /// UNAVAILABLE
  /// RESTORE_IN_PROGRESS
  /// RESTORE_FAILED
  /// BACKUP_IN_PROGRESS
  /// SCALE_IN_PROGRESS
  /// AVAILABLE_NEEDS_ATTENTION
  /// UPDATING
  /// MAINTENANCE_IN_PROGRESS
  /// RESTARTING
  /// RECREATING
  /// ROLE_CHANGE_IN_PROGRESS
  /// UPGRADING
  /// INACCESSIBLE
  /// STANDBY
  final pulumi.Input<String> state;

  /// Creates a new [GetAutonomousDatabasePropertyLocalStandbyDb].
  /// [dataGuardRoleChangedTime] The date and time the Autonomous Data Guard role was switched for the
  /// [disasterRecoveryRoleChangedTime] The date and time the Disaster Recovery role was switched for the standby
  /// [lagTimeDuration] The amount of time, in seconds, that the data of the standby database lags
  /// [lifecycleDetails] The additional details about the current lifecycle state of the
  /// [state] Possible values:
  const GetAutonomousDatabasePropertyLocalStandbyDb({
    required this.dataGuardRoleChangedTime,
    required this.disasterRecoveryRoleChangedTime,
    required this.lagTimeDuration,
    required this.lifecycleDetails,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataGuardRoleChangedTime': dataGuardRoleChangedTime,
      'disasterRecoveryRoleChangedTime': disasterRecoveryRoleChangedTime,
      'lagTimeDuration': lagTimeDuration,
      'lifecycleDetails': lifecycleDetails,
      'state': state,
    };
  }

  factory GetAutonomousDatabasePropertyLocalStandbyDb.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyLocalStandbyDb(
      dataGuardRoleChangedTime: pulumi.Input.fromValue(map['dataGuardRoleChangedTime'] as String),
      disasterRecoveryRoleChangedTime: pulumi.Input.fromValue(map['disasterRecoveryRoleChangedTime'] as String),
      lagTimeDuration: pulumi.Input.fromValue(map['lagTimeDuration'] as String),
      lifecycleDetails: pulumi.Input.fromValue(map['lifecycleDetails'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

