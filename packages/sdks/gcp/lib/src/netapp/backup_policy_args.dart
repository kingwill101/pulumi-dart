// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_backup_policy_backup_policy_args_doc}
/// The set of arguments for BackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_policy_backup_policy_args_doc}
class BackupPolicyArgs {
  /// Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  final pulumi.Input<int> dailyBackupLimit;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// If enabled, make backups automatically according to the schedules.
  /// This will be applied to all volumes that have this policy attached and enforced on volume level.
  final pulumi.Input<bool>? enabled;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the region for the policy to apply to.
  final pulumi.Input<String> location;
  /// Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  final pulumi.Input<int> monthlyBackupLimit;
  /// The name of the backup policy. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  final pulumi.Input<int> weeklyBackupLimit;

  /// Creates a new [BackupPolicyArgs].
  /// [dailyBackupLimit] Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  /// [description] An optional description of this resource.
  /// [enabled] If enabled, make backups automatically according to the schedules.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  /// [location] Name of the region for the policy to apply to.
  /// [monthlyBackupLimit] Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  /// [name] The name of the backup policy. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [weeklyBackupLimit] Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  BackupPolicyArgs({
    required this.dailyBackupLimit,
    this.description,
    this.enabled,
    this.labels,
    required this.location,
    required this.monthlyBackupLimit,
    this.name,
    this.project,
    required this.weeklyBackupLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyBackupLimit': dailyBackupLimit,
      'description': ?description,
      'enabled': ?enabled,
      'labels': ?labels,
      'location': location,
      'monthlyBackupLimit': monthlyBackupLimit,
      'name': ?name,
      'project': ?project,
      'weeklyBackupLimit': weeklyBackupLimit,
    };
  }

  factory BackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BackupPolicyArgs(
      dailyBackupLimit: pulumi.Input.fromValue(map['dailyBackupLimit'] as int),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      monthlyBackupLimit: pulumi.Input.fromValue(map['monthlyBackupLimit'] as int),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyBackupLimit: pulumi.Input.fromValue(map['weeklyBackupLimit'] as int),
    );
  }
}

