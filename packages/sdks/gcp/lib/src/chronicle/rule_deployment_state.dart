// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuleDeployment resources.
class RuleDeploymentState {
  /// Whether detections resulting from this deployment should be considered
  /// alerts.
  final pulumi.Input<bool>? alerting;
  /// Output only. The timestamp when the rule deployment archive state was last set to true. If the rule deployment's current archive state is not set to true, the field will be empty.
  final pulumi.Input<String>? archiveTime;
  /// The archive state of the rule deployment.
  /// Cannot be set to true unless enabled is set to false i.e.
  /// archiving requires a two-step process: first, disable the rule by
  /// setting 'enabled' to false, then set 'archive' to true.
  /// If set to true, alerting will automatically be set to false.
  /// If currently set to true, enabled, alerting, and run_frequency cannot be
  /// updated.
  final pulumi.Input<bool>? archived;
  /// Output only. The names of the associated/chained consumer rules. Rules are considered
  /// consumers of this rule if their rule text explicitly filters on this rule's ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  final pulumi.Input<List<String>>? consumerRules;
  /// Whether the rule is currently deployed continuously against incoming data.
  final pulumi.Input<bool>? enabled;
  /// The execution state of the rule deployment.
  /// Possible values:
  /// DEFAULT
  /// LIMITED
  /// PAUSED
  final pulumi.Input<String>? executionState;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// Output only. The timestamp when the rule deployment alert state was lastly changed. This is filled regardless of the current alert state.E.g. if the current alert status is false, this timestamp will be the timestamp when the alert status was changed to false.
  final pulumi.Input<String>? lastAlertStatusChangeTime;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// The resource name of the rule deployment.
  /// Note that RuleDeployment is a child of the overall Rule, not any individual
  /// revision, so the resource ID segment for the Rule resource must not
  /// reference a specific revision.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/deployment
  final pulumi.Input<String>? name;
  /// Output only. The names of the associated/chained producer rules. Rules are considered
  /// producers for this rule if this rule explicitly filters on their ruleid.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  final pulumi.Input<List<String>>? producerRules;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Rule ID of the rule.
  final pulumi.Input<String>? rule;
  /// The run frequency of the rule deployment.
  /// Possible values:
  /// LIVE
  /// HOURLY
  /// DAILY
  final pulumi.Input<String>? runFrequency;

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
  RuleDeploymentState({
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
    };
  }

  factory RuleDeploymentState.fromMap(Map<String, dynamic> map) {
    return RuleDeploymentState(
      alerting: map['alerting'] == null ? null : (map['alerting']! as bool).input(),
      archiveTime: map['archiveTime'] == null ? null : (map['archiveTime']! as String).input(),
      archived: map['archived'] == null ? null : (map['archived']! as bool).input(),
      consumerRules: map['consumerRules'] == null ? null : ((map['consumerRules']! as List).cast<String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      executionState: map['executionState'] == null ? null : (map['executionState']! as String).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      lastAlertStatusChangeTime: map['lastAlertStatusChangeTime'] == null ? null : (map['lastAlertStatusChangeTime']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      producerRules: map['producerRules'] == null ? null : ((map['producerRules']! as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      runFrequency: map['runFrequency'] == null ? null : (map['runFrequency']! as String).input(),
    );
  }
}

