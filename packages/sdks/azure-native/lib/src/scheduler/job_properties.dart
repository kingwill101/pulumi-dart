// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_action.dart';
import 'job_recurrence.dart';
import 'job_state.dart';

class JobProperties {
  /// Gets or sets the job action.
  final pulumi.Input<JobAction>? action;

  /// Gets or sets the job recurrence.
  final pulumi.Input<JobRecurrence>? recurrence;

  /// Gets or sets the job start time.
  final pulumi.Input<String>? startTime;

  /// Gets or set the job state.
  final pulumi.Input<JobState>? state;

  /// Creates a new [JobProperties].
  /// [action] Gets or sets the job action.
  /// [recurrence] Gets or sets the job recurrence.
  /// [startTime] Gets or sets the job start time.
  /// [state] Gets or set the job state.
  JobProperties({this.action, this.recurrence, this.startTime, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          ?pulumi.Input.mapOptionalInputValue<JobAction, Map<String, dynamic>>(
            action,
            (value) => value.toMap(),
          ),
      'recurrence':
          ?pulumi.Input.mapOptionalInputValue<
            JobRecurrence,
            Map<String, dynamic>
          >(recurrence, (value) => value.toMap()),
      'startTime': ?startTime,
      'state': ?pulumi.Input.mapOptionalInputValue<JobState, String>(
        state,
        (value) => value.wireValue,
      ),
    };
  }

  factory JobProperties.fromMap(Map<String, dynamic> map) {
    return JobProperties(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobAction.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      recurrence: (() {
        final guardedValue = map['recurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobState.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
