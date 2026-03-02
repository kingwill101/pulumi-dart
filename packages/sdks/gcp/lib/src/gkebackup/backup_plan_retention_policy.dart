// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanRetentionPolicy {
  /// Minimum age for a Backup created via this BackupPlan (in days).
  /// Must be an integer value between 0-90 (inclusive).
  /// A Backup created under this BackupPlan will not be deletable
  /// until it reaches Backup's (create time + backup_delete_lock_days).
  /// Updating this field of a BackupPlan does not affect existing Backups.
  /// Backups created after a successful update will inherit this new value.
  final pulumi.Input<int>? backupDeleteLockDays;
  /// The default maximum age of a Backup created via this BackupPlan.
  /// This field MUST be an integer value >= 0 and <= 365. If specified,
  /// a Backup created under this BackupPlan will be automatically deleted
  /// after its age reaches (createTime + backupRetainDays).
  /// If not specified, Backups created under this BackupPlan will NOT be
  /// subject to automatic deletion. Updating this field does NOT affect
  /// existing Backups under it. Backups created AFTER a successful update
  /// will automatically pick up the new value.
  /// NOTE: backupRetainDays must be >= backupDeleteLockDays.
  /// If cronSchedule is defined, then this must be <= 360 * the creation interval.
  /// If rpo_config is defined, then this must be
  /// <= 360 * targetRpoMinutes/(1440minutes/day)
  final pulumi.Input<int>? backupRetainDays;
  /// This flag denotes whether the retention policy of this BackupPlan is locked.
  /// If set to True, no further update is allowed on this policy, including
  /// the locked field itself.
  final pulumi.Input<bool>? locked;

  /// Creates a new [BackupPlanRetentionPolicy].
  /// [backupDeleteLockDays] Minimum age for a Backup created via this BackupPlan (in days).
  /// [backupRetainDays] The default maximum age of a Backup created via this BackupPlan.
  /// [locked] This flag denotes whether the retention policy of this BackupPlan is locked.
  BackupPlanRetentionPolicy({
    this.backupDeleteLockDays,
    this.backupRetainDays,
    this.locked,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDeleteLockDays': ?backupDeleteLockDays,
      'backupRetainDays': ?backupRetainDays,
      'locked': ?locked,
    };
  }

  factory BackupPlanRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return BackupPlanRetentionPolicy(
      backupDeleteLockDays: map['backupDeleteLockDays'] == null ? null : (map['backupDeleteLockDays']! as int).input(),
      backupRetainDays: map['backupRetainDays'] == null ? null : (map['backupRetainDays']! as int).input(),
      locked: map['locked'] == null ? null : (map['locked']! as bool).input(),
    );
  }
}

