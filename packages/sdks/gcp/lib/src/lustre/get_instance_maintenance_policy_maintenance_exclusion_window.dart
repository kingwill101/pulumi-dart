// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy_maintenance_exclusion_window_end_date.dart';
import 'get_instance_maintenance_policy_maintenance_exclusion_window_start_date.dart';
import 'get_instance_maintenance_policy_maintenance_exclusion_window_time.dart';

class GetInstanceMaintenancePolicyMaintenanceExclusionWindow {
  /// Represents a whole or partial calendar date, such as a birthday. The time of
  /// day and time zone are either specified elsewhere or are insignificant. The
  /// date is relative to the Gregorian Calendar. This can represent one of the
  /// following:
  ///
  /// * A full date, with non-zero year, month, and day values.
  /// * A month and day, with a zero year (for example, an anniversary).
  /// * A year on its own, with a zero month and a zero day.
  /// * A year and month, with a zero day (for example, a credit card expiration
  /// date).
  ///
  /// Related types:
  ///
  /// * google.type.TimeOfDay
  /// * google.type.DateTime
  /// * google.protobuf.Timestamp
  final pulumi.Input<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate>> endDates;
  /// Represents a whole or partial calendar date, such as a birthday. The time of
  /// day and time zone are either specified elsewhere or are insignificant. The
  /// date is relative to the Gregorian Calendar. This can represent one of the
  /// following:
  ///
  /// * A full date, with non-zero year, month, and day values.
  /// * A month and day, with a zero year (for example, an anniversary).
  /// * A year on its own, with a zero month and a zero day.
  /// * A year and month, with a zero day (for example, a credit card expiration
  /// date).
  ///
  /// Related types:
  ///
  /// * google.type.TimeOfDay
  /// * google.type.DateTime
  /// * google.protobuf.Timestamp
  final pulumi.Input<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindowStartDate>> startDates;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime>> times;

  /// Creates a new [GetInstanceMaintenancePolicyMaintenanceExclusionWindow].
  /// [endDates] Represents a whole or partial calendar date, such as a birthday. The time of
  /// [startDates] Represents a whole or partial calendar date, such as a birthday. The time of
  /// [times] Represents a time of day. The date and time zone are either not significant
  const GetInstanceMaintenancePolicyMaintenanceExclusionWindow({
    required this.endDates,
    required this.startDates,
    required this.times,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDates': pulumi.Input.mapInputValue<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate>, List<Map<String, dynamic>>>(endDates, (value) => pulumi.Input.encodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startDates': pulumi.Input.mapInputValue<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindowStartDate>, List<Map<String, dynamic>>>(startDates, (value) => pulumi.Input.encodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindowStartDate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'times': pulumi.Input.mapInputValue<List<GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime>, List<Map<String, dynamic>>>(times, (value) => pulumi.Input.encodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceMaintenancePolicyMaintenanceExclusionWindow.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicyMaintenanceExclusionWindow(
      endDates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate>(map['endDates']!, (value) => GetInstanceMaintenancePolicyMaintenanceExclusionWindowEndDate.fromMap((value as Map).cast<String, dynamic>()))),
      startDates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindowStartDate>(map['startDates']!, (value) => GetInstanceMaintenancePolicyMaintenanceExclusionWindowStartDate.fromMap((value as Map).cast<String, dynamic>()))),
      times: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime>(map['times']!, (value) => GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
