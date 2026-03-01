// ignore_for_file: unused_element, unnecessary_cast

import 'job_action.dart';
import 'job_recurrence.dart';
import 'job_state.dart';

class JobProperties {
  /// Gets or sets the job action.
  final JobAction? action;
  /// Gets or sets the job recurrence.
  final JobRecurrence? recurrence;
  /// Gets or sets the job start time.
  final String? startTime;
  /// Gets or set the job state.
  final JobState? state;

  /// Creates a new [JobProperties].
  /// [action] Gets or sets the job action.
  /// [recurrence] Gets or sets the job recurrence.
  /// [startTime] Gets or sets the job start time.
  /// [state] Gets or set the job state.
  JobProperties({
    this.action,
    this.recurrence,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
      'startTime': ?startTime,
      'state': ?state == null ? null : state!.value,
    };
  }

  factory JobProperties.fromMap(Map<String, dynamic> map) {
    return JobProperties(
      action: map['action'] == null ? null : JobAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : JobRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : JobState.fromValue(map['state'] as String),
    );
  }
}

