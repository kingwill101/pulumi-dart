// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_property_scheduled_operation_detail_start_time.dart';
import 'get_autonomous_database_property_scheduled_operation_detail_stop_time.dart';

class GetAutonomousDatabasePropertyScheduledOperationDetail {
  /// Possible values:
  /// DAY_OF_WEEK_UNSPECIFIED
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final pulumi.Input<String> dayOfWeek;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<GetAutonomousDatabasePropertyScheduledOperationDetailStartTime>> startTimes;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<GetAutonomousDatabasePropertyScheduledOperationDetailStopTime>> stopTimes;

  /// Creates a new [GetAutonomousDatabasePropertyScheduledOperationDetail].
  /// [dayOfWeek] Possible values:
  /// [startTimes] Represents a time of day. The date and time zone are either not significant
  /// [stopTimes] Represents a time of day. The date and time zone are either not significant
  const GetAutonomousDatabasePropertyScheduledOperationDetail({
    required this.dayOfWeek,
    required this.startTimes,
    required this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startTimes': pulumi.Input.mapInputValue<List<GetAutonomousDatabasePropertyScheduledOperationDetailStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetAutonomousDatabasePropertyScheduledOperationDetailStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stopTimes': pulumi.Input.mapInputValue<List<GetAutonomousDatabasePropertyScheduledOperationDetailStopTime>, List<Map<String, dynamic>>>(stopTimes, (value) => pulumi.Input.encodeList<GetAutonomousDatabasePropertyScheduledOperationDetailStopTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAutonomousDatabasePropertyScheduledOperationDetail.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyScheduledOperationDetail(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasePropertyScheduledOperationDetailStartTime>(map['startTimes']!, (value) => GetAutonomousDatabasePropertyScheduledOperationDetailStartTime.fromMap((value as Map).cast<String, dynamic>()))),
      stopTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasePropertyScheduledOperationDetailStopTime>(map['stopTimes']!, (value) => GetAutonomousDatabasePropertyScheduledOperationDetailStopTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
