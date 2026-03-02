// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retrohunt_execution_interval.dart';
import 'retrohunt_process_interval.dart';

/// Input properties used for looking up and filtering Retrohunt resources.
class RetrohuntState {
  /// The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  final pulumi.Input<String>? retrohuntId;
  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  final pulumi.Input<List<RetrohuntExecutionInterval>>? executionIntervals;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// The resource name of the retrohunt.
  /// Retrohunt is the child of a rule revision. {rule} in the format below is
  /// structured as {rule_id@revision_id}.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}/retrohunts/{retrohunt}
  final pulumi.Input<String>? name;
  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  final pulumi.Input<RetrohuntProcessInterval>? processInterval;
  /// Output only. Percent progress of the retrohunt towards completion, from 0.00 to 100.00.
  final pulumi.Input<double>? progressPercentage;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Rule ID of the rule.
  final pulumi.Input<String>? rule;
  /// Output only. The state of the retrohunt.
  /// Possible values:
  /// RUNNING
  /// DONE
  /// CANCELLED
  /// FAILED
  final pulumi.Input<String>? state;

  /// Creates a new [RetrohuntState].
  /// [retrohuntId] The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  /// [executionIntervals] Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] The resource name of the retrohunt.
  /// [processInterval] Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// [progressPercentage] Output only. Percent progress of the retrohunt towards completion, from 0.00 to 100.00.
  /// [project] The ID of the project in which the resource belongs.
  /// [rule] The Rule ID of the rule.
  /// [state] Output only. The state of the retrohunt.
  RetrohuntState({
    this.retrohuntId,
    this.executionIntervals,
    this.instance,
    this.location,
    this.name,
    this.processInterval,
    this.progressPercentage,
    this.project,
    this.rule,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'RetrohuntId': ?retrohuntId,
      'executionIntervals': ?pulumi.Input.mapOptionalInputValue<List<RetrohuntExecutionInterval>, List<Map<String, dynamic>>>(executionIntervals, (value) => pulumi.Input.encodeList<RetrohuntExecutionInterval, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'processInterval': ?pulumi.Input.mapOptionalInputValue<RetrohuntProcessInterval, Map<String, dynamic>>(processInterval, (value) => value.toMap()),
      'progressPercentage': ?progressPercentage,
      'project': ?project,
      'rule': ?rule,
      'state': ?state,
    };
  }

  factory RetrohuntState.fromMap(Map<String, dynamic> map) {
    return RetrohuntState(
      retrohuntId: map['RetrohuntId'] == null ? null : (map['RetrohuntId'] as String).input(),
      executionIntervals: map['executionIntervals'] == null ? null : (pulumi.Input.decodeList<RetrohuntExecutionInterval>(map['executionIntervals'], (value) => RetrohuntExecutionInterval.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      processInterval: map['processInterval'] == null ? null : (RetrohuntProcessInterval.fromMap((map['processInterval'] as Map).cast<String, dynamic>())).input(),
      progressPercentage: map['progressPercentage'] == null ? null : (map['progressPercentage'] as double).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      rule: map['rule'] == null ? null : (map['rule'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

