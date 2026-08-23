// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_maintenance_exclusion_window_end_date.dart';
import 'instance_maintenance_policy_maintenance_exclusion_window_start_date.dart';
import 'instance_maintenance_policy_maintenance_exclusion_window_time.dart';

class InstanceMaintenancePolicyMaintenanceExclusionWindow {
  /// Represents a whole or partial calendar date, such as a birthday. The time of
  /// day and time zone are either specified elsewhere or are insignificant. The
  /// date is relative to the Gregorian Calendar. This can represent one of the
  /// following:
  /// * A full date, with non-zero year, month, and day values.
  /// * A month and day, with a zero year (for example, an anniversary).
  /// * A year on its own, with a zero month and a zero day.
  /// * A year and month, with a zero day (for example, a credit card expiration
  /// date).
  /// Related types:
  /// * google.type.TimeOfDay
  /// * google.type.DateTime
  /// * google.protobuf.Timestamp
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceExclusionWindowEndDate> endDate;
  /// Represents a whole or partial calendar date, such as a birthday. The time of
  /// day and time zone are either specified elsewhere or are insignificant. The
  /// date is relative to the Gregorian Calendar. This can represent one of the
  /// following:
  /// * A full date, with non-zero year, month, and day values.
  /// * A month and day, with a zero year (for example, an anniversary).
  /// * A year on its own, with a zero month and a zero day.
  /// * A year and month, with a zero day (for example, a credit card expiration
  /// date).
  /// Related types:
  /// * google.type.TimeOfDay
  /// * google.type.DateTime
  /// * google.protobuf.Timestamp
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceExclusionWindowStartDate> startDate;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and `google.protobuf.Timestamp`.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceExclusionWindowTime> time;

  /// Creates a new [InstanceMaintenancePolicyMaintenanceExclusionWindow].
  /// [endDate] Represents a whole or partial calendar date, such as a birthday. The time of
  /// [startDate] Represents a whole or partial calendar date, such as a birthday. The time of
  /// [time] Represents a time of day. The date and time zone are either not significant
  const InstanceMaintenancePolicyMaintenanceExclusionWindow({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': pulumi.Input.mapInputValue<InstanceMaintenancePolicyMaintenanceExclusionWindowEndDate, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<InstanceMaintenancePolicyMaintenanceExclusionWindowStartDate, Map<String, dynamic>>(startDate, (value) => value.toMap()),
      'time': pulumi.Input.mapInputValue<InstanceMaintenancePolicyMaintenanceExclusionWindowTime, Map<String, dynamic>>(time, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicyMaintenanceExclusionWindow.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyMaintenanceExclusionWindow(
      endDate: pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceExclusionWindowEndDate.fromMap((map['endDate']! as Map).cast<String, dynamic>())),
      startDate: pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceExclusionWindowStartDate.fromMap((map['startDate']! as Map).cast<String, dynamic>())),
      time: pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceExclusionWindowTime.fromMap((map['time']! as Map).cast<String, dynamic>())),
    );
  }
}
