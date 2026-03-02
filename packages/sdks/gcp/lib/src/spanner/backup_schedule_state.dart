// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_encryption_config.dart';
import 'backup_schedule_spec.dart';

/// Input properties used for looking up and filtering BackupSchedule resources.
class BackupScheduleState {
  /// The database to create the backup schedule on.
  final pulumi.Input<String>? database;
  /// Configuration for the encryption of the backup schedule.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleEncryptionConfig>? encryptionConfig;
  /// The schedule creates only full backups..
  final pulumi.Input<Map<String, dynamic>>? fullBackupSpec;
  /// The schedule creates incremental backup chains.
  final pulumi.Input<Map<String, dynamic>>? incrementalBackupSpec;
  /// The instance to create the database on.
  final pulumi.Input<String>? instance;
  /// A unique identifier for the backup schedule, which cannot be changed after
  /// the backup schedule is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  /// You can set this to a value up to 366 days.
  final pulumi.Input<String>? retentionDuration;
  /// Defines specifications of the backup schedule.
  /// Structure is documented below.
  final pulumi.Input<BackupScheduleSpec>? spec;

  /// Creates a new [BackupScheduleState].
  /// [database] The database to create the backup schedule on.
  /// [encryptionConfig] Configuration for the encryption of the backup schedule.
  /// [fullBackupSpec] The schedule creates only full backups..
  /// [incrementalBackupSpec] The schedule creates incremental backup chains.
  /// [instance] The instance to create the database on.
  /// [name] A unique identifier for the backup schedule, which cannot be changed after
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionDuration] At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// [spec] Defines specifications of the backup schedule.
  BackupScheduleState({
    this.database,
    this.encryptionConfig,
    this.fullBackupSpec,
    this.incrementalBackupSpec,
    this.instance,
    this.name,
    this.project,
    this.retentionDuration,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<BackupScheduleEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'fullBackupSpec': ?fullBackupSpec,
      'incrementalBackupSpec': ?incrementalBackupSpec,
      'instance': ?instance,
      'name': ?name,
      'project': ?project,
      'retentionDuration': ?retentionDuration,
      'spec': ?pulumi.Input.mapOptionalInputValue<BackupScheduleSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory BackupScheduleState.fromMap(Map<String, dynamic> map) {
    return BackupScheduleState(
      database: map['database'] == null ? null : (map['database']! as String).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (BackupScheduleEncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      fullBackupSpec: map['fullBackupSpec'] == null ? null : ((map['fullBackupSpec']! as Map).cast<String, dynamic>()).input(),
      incrementalBackupSpec: map['incrementalBackupSpec'] == null ? null : ((map['incrementalBackupSpec']! as Map).cast<String, dynamic>()).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      retentionDuration: map['retentionDuration'] == null ? null : (map['retentionDuration']! as String).input(),
      spec: map['spec'] == null ? null : (BackupScheduleSpec.fromMap((map['spec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

