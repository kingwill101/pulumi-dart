// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config.dart';

/// {@template pulumi_gkebackup_restore_plan_restore_plan_args_doc}
/// The set of arguments for RestorePlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_restore_plan_restore_plan_args_doc}
class RestorePlanArgs {
  /// A reference to the BackupPlan from which Backups may be used
  /// as the source for Restores created via this RestorePlan.
  final pulumi.Input<String> backupPlan;
  /// The source cluster from which Restores will be created via this RestorePlan.
  final pulumi.Input<String> cluster;
  /// User specified descriptive string for this RestorePlan.
  final pulumi.Input<String>? description;
  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The region of the Restore Plan.
  final pulumi.Input<String> location;
  /// The full name of the BackupPlan Resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Defines the configuration of Restores created via this RestorePlan.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfig> restoreConfig;

  /// Creates a new [RestorePlanArgs].
  /// [backupPlan] A reference to the BackupPlan from which Backups may be used
  /// [cluster] The source cluster from which Restores will be created via this RestorePlan.
  /// [description] User specified descriptive string for this RestorePlan.
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Restore Plan.
  /// [name] The full name of the BackupPlan Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [restoreConfig] Defines the configuration of Restores created via this RestorePlan.
  RestorePlanArgs({
    required pulumi.Output<String> backupPlan,
    required pulumi.Output<String> cluster,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<RestorePlanRestoreConfig> restoreConfig,
  }) :
      backupPlan = pulumi.Input.asInput<String>(backupPlan),
      cluster = pulumi.Input.asInput<String>(cluster),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      restoreConfig = pulumi.Input.asInput<RestorePlanRestoreConfig>(restoreConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'cluster': cluster,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'restoreConfig': pulumi.Input.mapInputValue<RestorePlanRestoreConfig, Map<String, dynamic>>(restoreConfig, (value) => value.toMap()),
    };
  }

  factory RestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return RestorePlanArgs(
      backupPlan: pulumi.Output.create<String>(map['backupPlan'] as String),
      cluster: pulumi.Output.create<String>(map['cluster'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      restoreConfig: pulumi.Output.create<RestorePlanRestoreConfig>(RestorePlanRestoreConfig.fromMap((map['restoreConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

