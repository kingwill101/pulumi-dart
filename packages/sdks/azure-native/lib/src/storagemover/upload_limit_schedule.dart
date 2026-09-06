// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_limit_weekly_recurrence.dart';

/// The WAN-link upload limit schedule. Overlapping recurrences are not allowed.
class UploadLimitSchedule {
  /// The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  final pulumi.Input<List<UploadLimitWeeklyRecurrence>?>? weeklyRecurrences;

  /// Creates a new [UploadLimitSchedule].
  /// [weeklyRecurrences] The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  const UploadLimitSchedule({
    this.weeklyRecurrences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weeklyRecurrences': ?pulumi.Input.mapOptionalInputValue<List<UploadLimitWeeklyRecurrence>, List<Map<String, dynamic>>>(weeklyRecurrences, (value) => pulumi.Input.encodeList<UploadLimitWeeklyRecurrence, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UploadLimitSchedule.fromMap(Map<String, dynamic> map) {
    return UploadLimitSchedule(
      weeklyRecurrences: (() { final guardedValue = map['weeklyRecurrences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UploadLimitWeeklyRecurrence>(guardedValue, (value) => UploadLimitWeeklyRecurrence.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
