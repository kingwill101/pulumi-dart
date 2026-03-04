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
  /// A list of key-&gt;value pairs.
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
    required this.backupPlan,
    required this.cluster,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.restoreConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': backupPlan,
      'cluster': cluster,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'restoreConfig':
          pulumi.Input.mapInputValue<
            RestorePlanRestoreConfig,
            Map<String, dynamic>
          >(restoreConfig, (value) => value.toMap()),
    };
  }

  factory RestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return RestorePlanArgs(
      backupPlan: pulumi.Input.fromValue(map['backupPlan'] as String),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
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
      restoreConfig: pulumi.Input.fromValue(
        RestorePlanRestoreConfig.fromMap(
          (map['restoreConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
