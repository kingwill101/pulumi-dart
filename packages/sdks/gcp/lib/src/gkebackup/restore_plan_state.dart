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
  /// A list of key->value pairs.
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
    pulumi.Output<String>? backupPlan,
    pulumi.Output<String>? cluster,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<RestorePlanRestoreConfig>? restoreConfig,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateReason,
    pulumi.Output<String>? uid,
  }) :
      backupPlan = pulumi.Input.asOptionalInput<String>(backupPlan),
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      restoreConfig = pulumi.Input.asOptionalInput<RestorePlanRestoreConfig>(restoreConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateReason = pulumi.Input.asOptionalInput<String>(stateReason),
      uid = pulumi.Input.asOptionalInput<String>(uid);

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
      'restoreConfig': ?pulumi.Input.mapOptionalInputValue<RestorePlanRestoreConfig, Map<String, dynamic>>(restoreConfig, (value) => value.toMap()),
      'state': ?state,
      'stateReason': ?stateReason,
      'uid': ?uid,
    };
  }

  factory RestorePlanState.fromMap(Map<String, dynamic> map) {
    return RestorePlanState(
      backupPlan: map['backupPlan'] == null ? null : pulumi.Output.create<String>(map['backupPlan'] as String),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      restoreConfig: map['restoreConfig'] == null ? null : pulumi.Output.create<RestorePlanRestoreConfig>(RestorePlanRestoreConfig.fromMap((map['restoreConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateReason: map['stateReason'] == null ? null : pulumi.Output.create<String>(map['stateReason'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

