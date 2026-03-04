// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config.dart';

/// Input properties used for looking up and filtering RestorePlan resources.
class RestorePlanState {
  /// A reference to the BackupPlan from which Backups may be used
  /// as the source for Restores created via this RestorePlan.
  final pulumi.Input<String>? backupPlan;

  /// The source cluster from which Restores will be created via this RestorePlan.
  final pulumi.Input<String>? cluster;

  /// User specified descriptive string for this RestorePlan.
  final pulumi.Input<String>? description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key-&gt;value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The region of the Restore Plan.
  final pulumi.Input<String>? location;

  /// The full name of the BackupPlan Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Defines the configuration of Restores created via this RestorePlan.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfig>? restoreConfig;

  /// The State of the RestorePlan.
  final pulumi.Input<String>? state;

  /// Detailed description of why RestorePlan is in its current state.
  final pulumi.Input<String>? stateReason;

  /// Server generated, unique identifier of UUID format.
  final pulumi.Input<String>? uid;

  /// Creates a new [RestorePlanState].
  /// [backupPlan] A reference to the BackupPlan from which Backups may be used
  /// [cluster] The source cluster from which Restores will be created via this RestorePlan.
  /// [description] User specified descriptive string for this RestorePlan.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Restore Plan.
  /// [name] The full name of the BackupPlan Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [restoreConfig] Defines the configuration of Restores created via this RestorePlan.
  /// [state] The State of the RestorePlan.
  /// [stateReason] Detailed description of why RestorePlan is in its current state.
  /// [uid] Server generated, unique identifier of UUID format.
  RestorePlanState({
    this.backupPlan,
    this.cluster,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.restoreConfig,
    this.state,
    this.stateReason,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlan': ?backupPlan,
      'cluster': ?cluster,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'restoreConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RestorePlanRestoreConfig,
            Map<String, dynamic>
          >(restoreConfig, (value) => value.toMap()),
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
    };
  }

  factory RestorePlanState.fromMap(Map<String, dynamic> map) {
    return RestorePlanState(
      backupPlan: (() {
        final guardedValue = map['backupPlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      restoreConfig: (() {
        final guardedValue = map['restoreConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RestorePlanRestoreConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateReason: (() {
        final guardedValue = map['stateReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
