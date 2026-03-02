// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  final pulumi.Input<InstanceAutoscalingConfig>? autoscalingConfig;
  /// The name of the instance's configuration (similar but not
  /// quite the same as a region) which defines the geographic placement and
  /// replication of your databases in this instance. It determines where your data
  /// is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
  /// In order to obtain a valid list please consult the
  /// [Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  final pulumi.Input<String>? config;
  /// Controls the default backup behavior for new databases within the instance.
  /// Note that `AUTOMATIC` is not permitted for free instances, as backups and backup schedules are not allowed for free instances.
  /// if unset or NONE, no default backup schedule will be created for new databases within the instance.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  final pulumi.Input<String>? defaultBackupScheduleType;
  /// The descriptive name for this instance as it appears in UIs. Must be
  /// unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String>? displayName;
  /// The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// Possible values are: `EDITION_UNSPECIFIED`, `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`.
  final pulumi.Input<String>? edition;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// This must be set to true if you created a backup manually in the console.
  final pulumi.Input<bool>? forceDestroy;
  /// The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// usage restrictions, quotas and billing. Currently this is used to distinguish FREE_INSTANCE vs PROVISIONED instances.
  /// When configured as FREE_INSTANCE, the field `edition` should not be configured.
  /// Possible values are: `PROVISIONED`, `FREE_INSTANCE`.
  final pulumi.Input<String>? instanceType;
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A unique identifier for the instance, which cannot be changed after
  /// the instance is created. The name must be between 6 and 30 characters
  /// in length.
  /// If not provided, a random string starting with `tf-` will be selected.
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? numNodes;
  final pulumi.Input<int>? processingUnits;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Instance status: `CREATING` or `READY`.
  final pulumi.Input<String>? state;

  /// Creates a new [InstanceState].
  /// [autoscalingConfig] Optional.
  /// [config] The name of the instance's configuration (similar but not
  /// [defaultBackupScheduleType] Controls the default backup behavior for new databases within the instance.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Must be
  /// [edition] The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// [instanceType] The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// [labels] An object containing a list of "key": value pairs.
  /// [name] A unique identifier for the instance, which cannot be changed after
  /// [numNodes] Optional.
  /// [processingUnits] Optional.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Instance status: `CREATING` or `READY`.
  InstanceState({
    this.autoscalingConfig,
    this.config,
    this.defaultBackupScheduleType,
    this.displayName,
    this.edition,
    this.effectiveLabels,
    this.forceDestroy,
    this.instanceType,
    this.labels,
    this.name,
    this.numNodes,
    this.processingUnits,
    this.project,
    this.pulumiLabels,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAutoscalingConfig, Map<String, dynamic>>(autoscalingConfig, (value) => value.toMap()),
      'config': ?config,
      'defaultBackupScheduleType': ?defaultBackupScheduleType,
      'displayName': ?displayName,
      'edition': ?edition,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'instanceType': ?instanceType,
      'labels': ?labels,
      'name': ?name,
      'numNodes': ?numNodes,
      'processingUnits': ?processingUnits,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      autoscalingConfig: map['autoscalingConfig'] == null ? null : (InstanceAutoscalingConfig.fromMap((map['autoscalingConfig']! as Map).cast<String, dynamic>())).input(),
      config: map['config'] == null ? null : (map['config']! as String).input(),
      defaultBackupScheduleType: map['defaultBackupScheduleType'] == null ? null : (map['defaultBackupScheduleType']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy']! as bool).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      numNodes: map['numNodes'] == null ? null : (map['numNodes']! as int).input(),
      processingUnits: map['processingUnits'] == null ? null : (map['processingUnits']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

