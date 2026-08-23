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
  const RetrohuntState({
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
      retrohuntId: (() { final guardedValue = map['RetrohuntId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionIntervals: (() { final guardedValue = map['executionIntervals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RetrohuntExecutionInterval>(guardedValue, (value) => RetrohuntExecutionInterval.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processInterval: (() { final guardedValue = map['processInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetrohuntProcessInterval.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      progressPercentage: (() { final guardedValue = map['progressPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
