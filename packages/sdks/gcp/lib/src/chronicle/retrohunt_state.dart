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
    pulumi.Output<String>? retrohuntId,
    pulumi.Output<List<RetrohuntExecutionInterval>>? executionIntervals,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<RetrohuntProcessInterval>? processInterval,
    pulumi.Output<double>? progressPercentage,
    pulumi.Output<String>? project,
    pulumi.Output<String>? rule,
    pulumi.Output<String>? state,
  }) :
      retrohuntId = pulumi.Input.asOptionalInput<String>(retrohuntId),
      executionIntervals = pulumi.Input.asOptionalInput<List<RetrohuntExecutionInterval>>(executionIntervals),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      processInterval = pulumi.Input.asOptionalInput<RetrohuntProcessInterval>(processInterval),
      progressPercentage = pulumi.Input.asOptionalInput<double>(progressPercentage),
      project = pulumi.Input.asOptionalInput<String>(project),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      retrohuntId: map['RetrohuntId'] == null ? null : pulumi.Output.create<String>(map['RetrohuntId'] as String),
      executionIntervals: map['executionIntervals'] == null ? null : pulumi.Output.create<List<RetrohuntExecutionInterval>>(pulumi.Input.decodeList<RetrohuntExecutionInterval>(map['executionIntervals'], (value) => RetrohuntExecutionInterval.fromMap((value as Map).cast<String, dynamic>()))),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      processInterval: map['processInterval'] == null ? null : pulumi.Output.create<RetrohuntProcessInterval>(RetrohuntProcessInterval.fromMap((map['processInterval'] as Map).cast<String, dynamic>())),
      progressPercentage: map['progressPercentage'] == null ? null : pulumi.Output.create<double>(map['progressPercentage'] as double),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

