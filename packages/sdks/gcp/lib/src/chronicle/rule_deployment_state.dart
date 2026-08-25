// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_deployment_schedule_customizations.dart';

/// Input properties used for looking up and filtering RuleDeployment resources.
class RuleDeploymentState {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  final pulumi.Input<bool?>? alerting;
  /// Output only. The timestamp when the rule deployment archive state was last set to true. If the rule deployment's current archive state is not set to true, the field will be empty.
  final pulumi.Input<String?>? archiveTime;
  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and runFrequency cannot be
  /// updated.
  final pulumi.Input<bool?>? archived;
  /// Output only. The names of the associated/chained consumer rules. Rules are considered
  /// consumers of this rule if their rule text explicitly filters on this rule's ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  final pulumi.Input<List<String>?>? consumerRules;
  /// Whether the rule is currently deployed continuously against incoming data.
  final pulumi.Input<bool?>? enabled;
  /// The execution state of the rule deployment.
  /// Possible values:
  /// DEFAULT
  /// LIMITED
  /// PAUSED
  final pulumi.Input<String?>? executionState;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String?>? instance;
  /// Output only. The timestamp when the rule deployment alert state was lastly changed. This is filled regardless of the current alert state.E.g. if the current alert status is false, this timestamp will be the timestamp when the alert status was changed to false.
  final pulumi.Input<String?>? lastAlertStatusChangeTime;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String?>? location;
  /// The resource name of the rule deployment.
  /// Note that RuleDeployment is a child of the overall Rule, not any individual
  /// revision, so the resource ID segment for the Rule resource must not
  /// reference a specific revision.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/deployment
  final pulumi.Input<String?>? name;
  /// Output only. The names of the associated/chained producer rules. Rules are considered
  /// producers for this rule if this rule explicitly filters on their ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  final pulumi.Input<List<String>?>? producerRules;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Rule ID of the rule.
  final pulumi.Input<String?>? rule;
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

  /// Creates a new [RuleDeploymentState].
  /// [alerting] Whether detections resulting from this deployment should be considered
  /// [archiveTime] Output only. The timestamp when the rule deployment archive state was last set to true. If the rule deployment's current archive state is not set to true, the field will be empty.
  /// [archived] The archive state of the rule deployment.
  /// [consumerRules] Output only. The names of the associated/chained consumer rules. Rules are considered
  /// [enabled] Whether the rule is currently deployed continuously against incoming data.
  /// [executionState] The execution state of the rule deployment.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [lastAlertStatusChangeTime] Output only. The timestamp when the rule deployment alert state was lastly changed. This is filled regardless of the current alert state.E.g. if the current alert status is false, this timestamp will be the timestamp when the alert status was changed to false.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] The resource name of the rule deployment.
  /// [producerRules] Output only. The names of the associated/chained producer rules. Rules are considered
  /// [project] The ID of the project in which the resource belongs.
  /// [rule] The Rule ID of the rule.
  /// [runFrequency] The run frequency of the rule deployment.
  /// [scheduleCustomizations] The schedule customizations of the rule deployment. Only valid for
  const RuleDeploymentState({
    this.alerting,
    this.archiveTime,
    this.archived,
    this.consumerRules,
    this.enabled,
    this.executionState,
    this.instance,
    this.lastAlertStatusChangeTime,
    this.location,
    this.name,
    this.producerRules,
    this.project,
    this.rule,
    this.runFrequency,
    this.scheduleCustomizations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerting': ?alerting,
      'archiveTime': ?archiveTime,
      'archived': ?archived,
      'consumerRules': ?consumerRules,
      'enabled': ?enabled,
      'executionState': ?executionState,
      'instance': ?instance,
      'lastAlertStatusChangeTime': ?lastAlertStatusChangeTime,
      'location': ?location,
      'name': ?name,
      'producerRules': ?producerRules,
      'project': ?project,
      'rule': ?rule,
      'runFrequency': ?runFrequency,
      'scheduleCustomizations': ?pulumi.Input.mapOptionalInputValue<RuleDeploymentScheduleCustomizations, Map<String, dynamic>>(scheduleCustomizations, (value) => value.toMap()),
    };
  }

  factory RuleDeploymentState.fromMap(Map<String, dynamic> map) {
    return RuleDeploymentState(
      alerting: (() { final guardedValue = map['alerting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      archiveTime: (() { final guardedValue = map['archiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      archived: (() { final guardedValue = map['archived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      consumerRules: (() { final guardedValue = map['consumerRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      executionState: (() { final guardedValue = map['executionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastAlertStatusChangeTime: (() { final guardedValue = map['lastAlertStatusChangeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producerRules: (() { final guardedValue = map['producerRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runFrequency: (() { final guardedValue = map['runFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleCustomizations: (() { final guardedValue = map['scheduleCustomizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleDeploymentScheduleCustomizations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
