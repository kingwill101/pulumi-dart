// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_limit_weekly_recurrence.dart';

/// The WAN-link upload limit schedule. Overlapping recurrences are not allowed.
class UploadLimitSchedule {
  /// The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  final List<UploadLimitWeeklyRecurrence>? weeklyRecurrences;

  /// Creates a new [UploadLimitSchedule].
  /// [weeklyRecurrences] The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  UploadLimitSchedule({
    this.weeklyRecurrences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weeklyRecurrences': ?weeklyRecurrences == null ? null : pulumi.Input.encodeList<UploadLimitWeeklyRecurrence, Map<String, dynamic>>(weeklyRecurrences!, (value) => value.toMap()),
    };
  }

  factory UploadLimitSchedule.fromMap(Map<String, dynamic> map) {
    return UploadLimitSchedule(
      weeklyRecurrences: map['weeklyRecurrences'] == null ? null : pulumi.Input.decodeList<UploadLimitWeeklyRecurrence>(map['weeklyRecurrences'], (value) => UploadLimitWeeklyRecurrence.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

