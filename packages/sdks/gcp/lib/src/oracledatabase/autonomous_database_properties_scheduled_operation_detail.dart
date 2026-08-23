// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties_scheduled_operation_detail_start_time.dart';
import 'autonomous_database_properties_scheduled_operation_detail_stop_time.dart';

class AutonomousDatabasePropertiesScheduledOperationDetail {
  /// Possible values:
  /// DAY_OF_WEEK_UNSPECIFIED
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final pulumi.Input<String>? dayOfWeek;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<AutonomousDatabasePropertiesScheduledOperationDetailStartTime>>? startTimes;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<AutonomousDatabasePropertiesScheduledOperationDetailStopTime>>? stopTimes;

  /// Creates a new [AutonomousDatabasePropertiesScheduledOperationDetail].
  /// [dayOfWeek] Possible values:
  /// [startTimes] Represents a time of day. The date and time zone are either not significant
  /// [stopTimes] Represents a time of day. The date and time zone are either not significant
  const AutonomousDatabasePropertiesScheduledOperationDetail({
    this.dayOfWeek,
    this.startTimes,
    this.stopTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'startTimes': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabasePropertiesScheduledOperationDetailStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<AutonomousDatabasePropertiesScheduledOperationDetailStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stopTimes': ?pulumi.Input.mapOptionalInputValue<List<AutonomousDatabasePropertiesScheduledOperationDetailStopTime>, List<Map<String, dynamic>>>(stopTimes, (value) => pulumi.Input.encodeList<AutonomousDatabasePropertiesScheduledOperationDetailStopTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutonomousDatabasePropertiesScheduledOperationDetail.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesScheduledOperationDetail(
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTimes: (() { final guardedValue = map['startTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabasePropertiesScheduledOperationDetailStartTime>(guardedValue, (value) => AutonomousDatabasePropertiesScheduledOperationDetailStartTime.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stopTimes: (() { final guardedValue = map['stopTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutonomousDatabasePropertiesScheduledOperationDetailStopTime>(guardedValue, (value) => AutonomousDatabasePropertiesScheduledOperationDetailStopTime.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
