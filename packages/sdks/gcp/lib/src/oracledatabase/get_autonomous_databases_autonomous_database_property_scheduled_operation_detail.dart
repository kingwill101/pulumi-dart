// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_databases_autonomous_database_property_scheduled_operation_detail_start_time.dart';
import 'get_autonomous_databases_autonomous_database_property_scheduled_operation_detail_stop_time.dart';

class GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail {
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
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime>> startTimes;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime>> stopTimes;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail].
  /// [dayOfWeek] Possible values:
  /// [startTimes] Represents a time of day. The date and time zone are either not significant
  /// [stopTimes] Represents a time of day. The date and time zone are either not significant
  const GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail({
    required this.dayOfWeek,
    required this.startTimes,
    required this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startTimes': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stopTimes': pulumi.Input.mapInputValue<List<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime>, List<Map<String, dynamic>>>(stopTimes, (value) => pulumi.Input.encodeList<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetail(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime>(map['startTimes']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStartTime.fromMap((value as Map).cast<String, dynamic>()))),
      stopTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime>(map['stopTimes']!, (value) => GetAutonomousDatabasesAutonomousDatabasePropertyScheduledOperationDetailStopTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
