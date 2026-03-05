// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upload_limit_weekly_recurrence_response.dart';

/// The WAN-link upload limit schedule. Overlapping recurrences are not allowed.
class UploadLimitScheduleResponse {
  /// The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  final pulumi.Input<List<UploadLimitWeeklyRecurrenceResponse>>? weeklyRecurrences;

  /// Creates a new [UploadLimitScheduleResponse].
  /// [weeklyRecurrences] The set of weekly repeating recurrences of the WAN-link upload limit schedule.
  UploadLimitScheduleResponse({
    this.weeklyRecurrences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weeklyRecurrences': ?pulumi.Input.mapOptionalInputValue<List<UploadLimitWeeklyRecurrenceResponse>, List<Map<String, dynamic>>>(weeklyRecurrences, (value) => pulumi.Input.encodeList<UploadLimitWeeklyRecurrenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UploadLimitScheduleResponse.fromMap(Map<String, dynamic> map) {
    return UploadLimitScheduleResponse(
      weeklyRecurrences: (() { final guardedValue = map['weeklyRecurrences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UploadLimitWeeklyRecurrenceResponse>(guardedValue, (value) => UploadLimitWeeklyRecurrenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

