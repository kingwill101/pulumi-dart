// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_deployment_schedule_customizations.dart';

/// {@template pulumi_chronicle_rule_deployment_rule_deployment_args_doc}
/// The set of arguments for RuleDeployment.
/// {@endtemplate}
/// {@macro pulumi_chronicle_rule_deployment_rule_deployment_args_doc}
class RuleDeploymentArgs {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  final pulumi.Input<bool?>? alerting;
  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and runFrequency cannot be
  /// updated.
  final pulumi.Input<bool?>? archived;
  /// Whether the rule is currently deployed continuously against incoming data.
  final pulumi.Input<bool?>? enabled;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Rule ID of the rule.
  final pulumi.Input<String> rule;
  /// The run frequency of the rule deployment.
  /// Possible values:
  /// LIVE
  /// HOURLY
  /// DAILY
  /// LIVE_CUSTOMIZABLE
  /// HOURLY_CUSTOMIZABLE
  /// Note: Certain legacy run frequencies are deprecated. For multi-event rules, use LIVE_CUSTOMIZABLE or HOURLY_CUSTOMIZABLE (for match windows &lt;=2d), or DAILY (for match windows &gt;2d).
  /// Legacy values LIVE and HOURLY are mapped to their customizable counterparts on the backend. DAILY for &lt;=2d match window multi-event rules will be happed to HOURLY_CUSTOMIZABLE.
  /// For single-event rules, HOURLY and DAILY are deprecated and mapped to LIVE. If you continue to use deprecated values in your Terraform configuration, Terraform will silently
  /// suppress the diff and ignore the changes to prevent infinite update loops.
  final pulumi.Input<String?>? runFrequency;
  /// The schedule customizations of the rule deployment. Only valid for
  /// customizable run frequencies.
  /// Structure is documented below.
  final pulumi.Input<RuleDeploymentScheduleCustomizations?>? scheduleCustomizations;

  /// Creates a new [RuleDeploymentArgs].
  /// [alerting] Whether detections resulting from this deployment should be considered
  /// [archived] The archive state of the rule deployment.
  /// [enabled] Whether the rule is currently deployed continuously against incoming data.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  /// [rule] The Rule ID of the rule.
  /// [runFrequency] The run frequency of the rule deployment.
  /// [scheduleCustomizations] The schedule customizations of the rule deployment. Only valid for
  const RuleDeploymentArgs({
    this.alerting,
    this.archived,
    this.enabled,
    required this.instance,
    required this.location,
    this.project,
    required this.rule,
    this.runFrequency,
    this.scheduleCustomizations,
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
      'scheduleCustomizations': ?pulumi.Input.mapOptionalInputValue<RuleDeploymentScheduleCustomizations, Map<String, dynamic>>(scheduleCustomizations, (value) => value.toMap()),
    };
  }

  factory RuleDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return RuleDeploymentArgs(
      alerting: (() { final guardedValue = map['alerting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      archived: (() { final guardedValue = map['archived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: pulumi.Input.fromValue(map['rule'] as String),
      runFrequency: (() { final guardedValue = map['runFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleCustomizations: (() { final guardedValue = map['scheduleCustomizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleDeploymentScheduleCustomizations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
