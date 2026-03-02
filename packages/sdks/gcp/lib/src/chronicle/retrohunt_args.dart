// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retrohunt_process_interval.dart';

/// {@template pulumi_chronicle_retrohunt_retrohunt_args_doc}
/// The set of arguments for Retrohunt.
/// {@endtemplate}
/// {@macro pulumi_chronicle_retrohunt_retrohunt_args_doc}
class RetrohuntArgs {
  /// The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  final pulumi.Input<String>? retrohuntId;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// Timestamp end (exclusive).
  /// The start must be less than or equal to the end.
  /// When the start equals the end, the interval is empty (matches no time).
  /// When both start and end are unspecified, the interval matches any time.
  /// Structure is documented below.
  final pulumi.Input<RetrohuntProcessInterval> processInterval;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Rule ID of the rule.
  final pulumi.Input<String> rule;

  /// Creates a new [RetrohuntArgs].
  /// [retrohuntId] The retrohunt ID of the Retrohunt. A retrohunt is an execution of a Rule over a time range in the past.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [processInterval] Represents a time interval, encoded as a Timestamp start (inclusive) and a
  /// [project] The ID of the project in which the resource belongs.
  /// [rule] The Rule ID of the rule.
  RetrohuntArgs({
    this.retrohuntId,
    required this.instance,
    required this.location,
    required this.processInterval,
    this.project,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'RetrohuntId': ?retrohuntId,
      'instance': instance,
      'location': location,
      'processInterval': pulumi.Input.mapInputValue<RetrohuntProcessInterval, Map<String, dynamic>>(processInterval, (value) => value.toMap()),
      'project': ?project,
      'rule': rule,
    };
  }

  factory RetrohuntArgs.fromMap(Map<String, dynamic> map) {
    return RetrohuntArgs(
      retrohuntId: map['RetrohuntId'] == null ? null : (map['RetrohuntId']! as String).input(),
      instance: (map['instance'] as String).input(),
      location: (map['location'] as String).input(),
      processInterval: (RetrohuntProcessInterval.fromMap((map['processInterval'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rule: (map['rule'] as String).input(),
    );
  }
}

