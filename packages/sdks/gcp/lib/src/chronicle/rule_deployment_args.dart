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
    this.alerting,
    this.archived,
    this.enabled,
    required this.instance,
    required this.location,
    this.project,
    required this.rule,
    this.runFrequency,
  });

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
      alerting: map['alerting'] == null ? null : (map['alerting']! as bool).input(),
      archived: map['archived'] == null ? null : (map['archived']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      instance: (map['instance'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rule: (map['rule'] as String).input(),
      runFrequency: map['runFrequency'] == null ? null : (map['runFrequency']! as String).input(),
    );
  }
}

