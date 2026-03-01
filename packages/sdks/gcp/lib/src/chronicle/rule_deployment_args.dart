// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_rule_deployment_rule_deployment_args_doc}
/// The set of arguments for RuleDeployment.
/// {@endtemplate}
/// {@macro pulumi_chronicle_rule_deployment_rule_deployment_args_doc}
class RuleDeploymentArgs {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  final pulumi.Input<bool>? alerting;
  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and run_frequency cannot be
  /// updated.
  final pulumi.Input<bool>? archived;
  /// Whether the rule is currently deployed continuously against incoming data.
  final pulumi.Input<bool>? enabled;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Rule ID of the rule.
  final pulumi.Input<String> rule;
  /// The run frequency of the rule deployment.
  /// Possible values:
  /// LIVE
  /// HOURLY
  /// DAILY
  final pulumi.Input<String>? runFrequency;

  /// Creates a new [RuleDeploymentArgs].
  /// [alerting] Whether detections resulting from this deployment should be considered
  /// [archived] The archive state of the rule deployment.
  /// [enabled] Whether the rule is currently deployed continuously against incoming data.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  /// [rule] The Rule ID of the rule.
  /// [runFrequency] The run frequency of the rule deployment.
  RuleDeploymentArgs({
    pulumi.Output<bool>? alerting,
    pulumi.Output<bool>? archived,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> instance,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> rule,
    pulumi.Output<String>? runFrequency,
  }) :
      alerting = pulumi.Input.asOptionalInput<bool>(alerting),
      archived = pulumi.Input.asOptionalInput<bool>(archived),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      instance = pulumi.Input.asInput<String>(instance),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      rule = pulumi.Input.asInput<String>(rule),
      runFrequency = pulumi.Input.asOptionalInput<String>(runFrequency);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerting': ?alerting,
      'archived': ?archived,
      'enabled': ?enabled,
      'instance': instance,
      'location': location,
      'project': ?project,
      'rule': rule,
      'runFrequency': ?runFrequency,
    };
  }

  factory RuleDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return RuleDeploymentArgs(
      alerting: map['alerting'] == null ? null : pulumi.Output.create<bool>(map['alerting'] as bool),
      archived: map['archived'] == null ? null : pulumi.Output.create<bool>(map['archived'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rule: pulumi.Output.create<String>(map['rule'] as String),
      runFrequency: map['runFrequency'] == null ? null : pulumi.Output.create<String>(map['runFrequency'] as String),
    );
  }
}

