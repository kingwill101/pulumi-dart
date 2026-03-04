// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_autoscaling_config.dart';

/// {@template pulumi_spanner_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_spanner_instance_instance_args_doc}
class InstanceArgs {
  final pulumi.Input<InstanceAutoscalingConfig>? autoscalingConfig;

  /// The name of the instance's configuration (similar but not
  /// quite the same as a region) which defines the geographic placement and
  /// replication of your databases in this instance. It determines where your data
  /// is stored. Values are typically of the form `regional-europe-west1` , `us-central` etc.
  /// In order to obtain a valid list please consult the
  /// [Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).
  final pulumi.Input<String> config;

  /// Controls the default backup behavior for new databases within the instance.
  /// Note that `AUTOMATIC` is not permitted for free instances, as backups and backup schedules are not allowed for free instances.
  /// if unset or NONE, no default backup schedule will be created for new databases within the instance.
  /// Possible values are: `NONE`, `AUTOMATIC`.
  final pulumi.Input<String>? defaultBackupScheduleType;

  /// The descriptive name for this instance as it appears in UIs. Must be
  /// unique per project and between 4 and 30 characters in length.
  final pulumi.Input<String> displayName;

  /// The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// Possible values are: `EDITION_UNSPECIFIED`, `STANDARD`, `ENTERPRISE`, `ENTERPRISE_PLUS`.
  final pulumi.Input<String>? edition;

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

  /// Creates a new [InstanceArgs].
  /// [autoscalingConfig] Optional.
  /// [config] The name of the instance's configuration (similar but not
  /// [defaultBackupScheduleType] Controls the default backup behavior for new databases within the instance.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Must be
  /// [edition] The edition selected for this instance. Different editions provide different capabilities at different price points.
  /// [forceDestroy] When deleting a spanner instance, this boolean option will delete all backups of this instance.
  /// [instanceType] The type of this instance. The type can be used to distinguish product variants, that can affect aspects like:
  /// [labels] An object containing a list of "key": value pairs.
  /// [name] A unique identifier for the instance, which cannot be changed after
  /// [numNodes] Optional.
  /// [processingUnits] Optional.
  /// [project] The ID of the project in which the resource belongs.
  InstanceArgs({
    this.autoscalingConfig,
    required this.config,
    this.defaultBackupScheduleType,
    required this.displayName,
    this.edition,
    this.forceDestroy,
    this.instanceType,
    this.labels,
    this.name,
    this.numNodes,
    this.processingUnits,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceAutoscalingConfig,
            Map<String, dynamic>
          >(autoscalingConfig, (value) => value.toMap()),
      'config': config,
      'defaultBackupScheduleType': ?defaultBackupScheduleType,
      'displayName': displayName,
      'edition': ?edition,
      'forceDestroy': ?forceDestroy,
      'instanceType': ?instanceType,
      'labels': ?labels,
      'name': ?name,
      'numNodes': ?numNodes,
      'processingUnits': ?processingUnits,
      'project': ?project,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      autoscalingConfig: (() {
        final guardedValue = map['autoscalingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceAutoscalingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      config: pulumi.Input.fromValue(map['config'] as String),
      defaultBackupScheduleType: (() {
        final guardedValue = map['defaultBackupScheduleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      edition: (() {
        final guardedValue = map['edition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numNodes: (() {
        final guardedValue = map['numNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      processingUnits: (() {
        final guardedValue = map['processingUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
