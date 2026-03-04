// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutonomousDatabaseBackup resources.
class AutonomousDatabaseBackupState {
  /// The azureId of the Autonomous Database that this backup is for. Changing this forces a new resource to be created.
  final pulumi.Input<String>? autonomousDatabaseId;

  /// The display name of the Autonomous Database Backup. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// (Updatable) The number of days to retain the backup. Must be between 90 and 3650 days.
  final pulumi.Input<int>? retentionPeriodInDays;

  /// The type of backup to create.Currently, only `LongTerm` backup operations are supported through the Oracle database At azure service. Defaults to `LongTerm`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [AutonomousDatabaseBackupState].
  /// [autonomousDatabaseId] The azureId of the Autonomous Database that this backup is for. Changing this forces a new resource to be created.
  /// [name] The display name of the Autonomous Database Backup. Changing this forces a new resource to be created.
  /// [retentionPeriodInDays] (Updatable) The number of days to retain the backup. Must be between 90 and 3650 days.
  /// [type] The type of backup to create.Currently, only `LongTerm` backup operations are supported through the Oracle database At azure service. Defaults to `LongTerm`. Changing this forces a new resource to be created.
  AutonomousDatabaseBackupState({
    this.autonomousDatabaseId,
    this.name,
    this.retentionPeriodInDays,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseId': ?autonomousDatabaseId,
      'name': ?name,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'type': ?type,
    };
  }

  factory AutonomousDatabaseBackupState.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseBackupState(
      autonomousDatabaseId: (() {
        final guardedValue = map['autonomousDatabaseId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionPeriodInDays: (() {
        final guardedValue = map['retentionPeriodInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
