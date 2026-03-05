// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseShortTermRetentionPolicy {
  /// The hours between each differential backup. This is only applicable to live databases but not dropped databases. Value has to be `12` or `24`. Defaults to `12` hours.
  final pulumi.Input<int>? backupIntervalInHours;
  /// Point In Time Restore configuration. Value has to be between `1` and `35`.
  final pulumi.Input<int> retentionDays;

  /// Creates a new [DatabaseShortTermRetentionPolicy].
  /// [backupIntervalInHours] The hours between each differential backup. This is only applicable to live databases but not dropped databases. Value has to be `12` or `24`. Defaults to `12` hours.
  /// [retentionDays] Point In Time Restore configuration. Value has to be between `1` and `35`.
  DatabaseShortTermRetentionPolicy({
    this.backupIntervalInHours,
    required this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalInHours': ?backupIntervalInHours,
      'retentionDays': retentionDays,
    };
  }

  factory DatabaseShortTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return DatabaseShortTermRetentionPolicy(
      backupIntervalInHours: (() { final guardedValue = map['backupIntervalInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
    );
  }
}

