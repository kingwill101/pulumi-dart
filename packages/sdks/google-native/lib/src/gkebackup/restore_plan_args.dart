// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_config.dart';

/// {@template pulumi_gkebackup_v1_restore_plan_args_doc}
/// The set of arguments for RestorePlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_restore_plan_args_doc}
class RestorePlanArgs {
  /// Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  final pulumi.Input<String> backupPlan;
  /// Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final pulumi.Input<String> cluster;
  /// Optional. User specified descriptive string for this RestorePlan.
  final pulumi.Input<String>? description;
  /// Optional. A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Configuration of Restores created via this RestorePlan.
  final pulumi.Input<RestoreConfig> restoreConfig;
  /// Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [RestorePlanArgs].
  /// [backupPlan] Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  /// [cluster] Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  /// [description] Optional. User specified descriptive string for this RestorePlan.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [location] Optional.
  /// [project] Optional.
  /// [restoreConfig] Configuration of Restores created via this RestorePlan.
  /// [restorePlanId] Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location
  RestorePlanArgs({
    required this.backupPlan,
    required this.cluster,
    this.description,
    this.labels,
    this.location,
    this.project,
    required this.restoreConfig,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'cluster': cluster,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'restoreConfig': pulumi.Input.mapInputValue<RestoreConfig, Map<String, dynamic>>(restoreConfig, (value) => value.toMap()),
      'restorePlanId': restorePlanId,
    };
  }

  factory RestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return RestorePlanArgs(
      backupPlan: (map['backupPlan'] as String).input(),
      cluster: (map['cluster'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      restoreConfig: (RestoreConfig.fromMap((map['restoreConfig'] as Map).cast<String, dynamic>())).input(),
      restorePlanId: (map['restorePlanId'] as String).input(),
    );
  }
}

