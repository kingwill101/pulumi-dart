// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_encryption_config.dart';
import 'backup_schedule_spec.dart';

/// {@template pulumi_spanner_backup_schedule_backup_schedule_args_doc}
/// The set of arguments for BackupSchedule.
/// {@endtemplate}
/// {@macro pulumi_spanner_backup_schedule_backup_schedule_args_doc}
class BackupScheduleArgs {
  /// The database to create the backup schedule on.
  final pulumi.Input<String> database;

  /// Configuration for the encryption of the backup schedule.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleEncryptionConfig>? encryptionConfig;

  /// The schedule creates only full backups..
  final pulumi.Input<Map<String, dynamic>>? fullBackupSpec;

  /// The schedule creates incremental backup chains.
  final pulumi.Input<Map<String, dynamic>>? incrementalBackupSpec;

  /// The instance to create the database on.
  final pulumi.Input<String> instance;

  /// A unique identifier for the backup schedule, which cannot be changed after
  /// the backup schedule is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  /// You can set this to a value up to 366 days.
  final pulumi.Input<String> retentionDuration;

  /// Defines specifications of the backup schedule.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleSpec>? spec;

  /// Creates a new [BackupScheduleArgs].
  /// [database] The database to create the backup schedule on.
  /// [encryptionConfig] Configuration for the encryption of the backup schedule.
  /// [fullBackupSpec] The schedule creates only full backups..
  /// [incrementalBackupSpec] The schedule creates incremental backup chains.
  /// [instance] The instance to create the database on.
  /// [name] A unique identifier for the backup schedule, which cannot be changed after
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionDuration] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [spec] Defines specifications of the backup schedule.
  BackupScheduleArgs({
    required this.database,
    this.encryptionConfig,
    this.fullBackupSpec,
    this.incrementalBackupSpec,
    required this.instance,
    this.name,
    this.project,
    required this.retentionDuration,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BackupScheduleEncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'fullBackupSpec': ?fullBackupSpec,
      'incrementalBackupSpec': ?incrementalBackupSpec,
      'instance': instance,
      'name': ?name,
      'project': ?project,
      'retentionDuration': retentionDuration,
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            BackupScheduleSpec,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory BackupScheduleArgs.fromMap(Map<String, dynamic> map) {
    return BackupScheduleArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupScheduleEncryptionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fullBackupSpec: (() {
        final guardedValue = map['fullBackupSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      incrementalBackupSpec: (() {
        final guardedValue = map['incrementalBackupSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionDuration: pulumi.Input.fromValue(
        map['retentionDuration'] as String,
      ),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupScheduleSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
