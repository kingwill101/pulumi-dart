// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_restore_args_doc}
/// The set of arguments for Restore.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_restore_args_doc}
class RestoreArgs {
  /// Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  final pulumi.Input<String> backup;
  /// User specified descriptive string for this Restore.
  final pulumi.Input<String>? description;
  /// A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Restores in this RestorePlan.
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [RestoreArgs].
  /// [backup] Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  /// [description] User specified descriptive string for this Restore.
  /// [labels] A set of custom labels supplied by user.
  /// [location] Optional.
  /// [project] Optional.
  /// [restoreId] Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Restores in this RestorePlan.
  /// [restorePlanId] Required.
  RestoreArgs({
    required this.backup,
    this.description,
    this.labels,
    this.location,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'restoreId': restoreId,
      'restorePlanId': restorePlanId,
    };
  }

  factory RestoreArgs.fromMap(Map<String, dynamic> map) {
    return RestoreArgs(
      backup: (map['backup'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      restoreId: (map['restoreId'] as String).input(),
      restorePlanId: (map['restorePlanId'] as String).input(),
    );
  }
}

