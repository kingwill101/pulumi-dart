// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snooze_criteria.dart';
import 'snooze_interval.dart';

/// {@template pulumi_monitoring_snooze_snooze_args_doc}
/// The set of arguments for Snooze.
/// {@endtemplate}
/// {@macro pulumi_monitoring_snooze_snooze_args_doc}
class SnoozeArgs {
  /// This defines the criteria for applying the Snooze.
  /// &gt; **Note:** After a snooze is created, its criteria can't be modified.
  /// Changing this block will force replacement of the resource.
  /// Structure is documented below.
  final pulumi.Input<SnoozeCriteria> criteria;
  /// A display name for the Snooze. This can be, at most, 512 unicode characters.
  final pulumi.Input<String> displayName;
  /// The Snooze will be active from interval.start_time through interval.end_time.
  /// interval.start_time cannot be in the past. There is a 15 second clock skew to
  /// account for the time it takes for a request to reach the API from the UI.
  /// &gt; **Note:** You can edit the name and period of an upcoming snooze, and you
  /// can edit the name and end time of an active snooze. You can't edit a past
  /// (expired) snooze.
  /// Structure is documented below.
  final pulumi.Input<SnoozeInterval> interval;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [SnoozeArgs].
  /// [criteria] This defines the criteria for applying the Snooze.
  /// [displayName] A display name for the Snooze. This can be, at most, 512 unicode characters.
  /// [interval] The Snooze will be active from interval.start_time through interval.end_time.
  /// [project] The ID of the project in which the resource belongs.
  const SnoozeArgs({
    required this.criteria,
    required this.displayName,
    required this.interval,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': pulumi.Input.mapInputValue<SnoozeCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'displayName': displayName,
      'interval': pulumi.Input.mapInputValue<SnoozeInterval, Map<String, dynamic>>(interval, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory SnoozeArgs.fromMap(Map<String, dynamic> map) {
    return SnoozeArgs(
      criteria: pulumi.Input.fromValue(SnoozeCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      interval: pulumi.Input.fromValue(SnoozeInterval.fromMap((map['interval']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
