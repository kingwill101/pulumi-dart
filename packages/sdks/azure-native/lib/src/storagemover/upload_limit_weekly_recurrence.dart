// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'day_of_week.dart';
import 'time.dart';

/// The weekly recurrence of the WAN-link upload limit schedule. The start time must be earlier in the day than the end time. The recurrence must not span across multiple days.
class UploadLimitWeeklyRecurrence {
  /// The set of days of week for the schedule recurrence. A day must not be specified more than once in a recurrence.
  final pulumi.Input<List<DayOfWeek>> days;
  /// The end time of the schedule recurrence. Full hour and 30-minute intervals are supported.
  final pulumi.Input<Time> endTime;
  /// The WAN-link upload bandwidth (maximum data transfer rate) in megabits per second. Value of 0 indicates no throughput is allowed and any running migration job is effectively paused for the duration of this recurrence. Only data plane operations are governed by this limit. Control plane operations ensure seamless functionality. The agent may exceed this limit with control messages, if necessary.
  final pulumi.Input<int> limitInMbps;
  /// The start time of the schedule recurrence. Full hour and 30-minute intervals are supported.
  final pulumi.Input<Time> startTime;

  /// Creates a new [UploadLimitWeeklyRecurrence].
  /// [days] The set of days of week for the schedule recurrence. A day must not be specified more than once in a recurrence.
  /// [endTime] The end time of the schedule recurrence. Full hour and 30-minute intervals are supported.
  /// [limitInMbps] The WAN-link upload bandwidth (maximum data transfer rate) in megabits per second. Value of 0 indicates no throughput is allowed and any running migration job is effectively paused for the duration of this recurrence. Only data plane operations are governed by this limit. Control plane operations ensure seamless functionality. The agent may exceed this limit with control messages, if necessary.
  /// [startTime] The start time of the schedule recurrence. Full hour and 30-minute intervals are supported.
  const UploadLimitWeeklyRecurrence({
    required this.days,
    required this.endTime,
    required this.limitInMbps,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': pulumi.Input.mapInputValue<List<DayOfWeek>, List<String>>(days, (value) => pulumi.Input.encodeList<DayOfWeek, String>(value, (value) => value.wireValue)),
      'endTime': pulumi.Input.mapInputValue<Time, Map<String, dynamic>>(endTime, (value) => value.toMap()),
      'limitInMbps': limitInMbps,
      'startTime': pulumi.Input.mapInputValue<Time, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory UploadLimitWeeklyRecurrence.fromMap(Map<String, dynamic> map) {
    return UploadLimitWeeklyRecurrence(
      days: pulumi.Input.fromValue(pulumi.Input.decodeList<DayOfWeek>(map['days']!, (value) => DayOfWeek.fromValue(value as String))),
      endTime: pulumi.Input.fromValue(Time.fromMap((map['endTime']! as Map).cast<String, dynamic>())),
      limitInMbps: pulumi.Input.fromValue(map['limitInMbps'] as int),
      startTime: pulumi.Input.fromValue(Time.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
