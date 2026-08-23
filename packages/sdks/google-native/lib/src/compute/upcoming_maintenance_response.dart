// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upcoming_maintenance_time_window_response.dart';

/// Upcoming Maintenance notification information.
class UpcomingMaintenanceResponse {
  /// Indicates if the maintenance can be customer triggered.
  final pulumi.Input<bool> canReschedule;
  /// The date when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  final pulumi.Input<String> date;
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> latestWindowStartTime;
  final pulumi.Input<String> maintenanceStatus;
  /// The start time window of the maintenance disruption. DEPRECATED: Use window_start_time instead. TimeWindow is a container for two strings that represent timestamps in "yyyy-MM-dd'T'HH:mm:ssZ" text format.
  final pulumi.Input<UpcomingMaintenanceTimeWindowResponse> startTimeWindow;
  /// The time when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  final pulumi.Input<String> time;
  /// Defines the type of maintenance.
  final pulumi.Input<String> type;
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> windowEndTime;
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> windowStartTime;

  /// Creates a new [UpcomingMaintenanceResponse].
  /// [canReschedule] Indicates if the maintenance can be customer triggered.
  /// [date] The date when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  /// [latestWindowStartTime] The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  /// [maintenanceStatus] Required.
  /// [startTimeWindow] The start time window of the maintenance disruption. DEPRECATED: Use window_start_time instead. TimeWindow is a container for two strings that represent timestamps in "yyyy-MM-dd'T'HH:mm:ssZ" text format.
  /// [time] The time when the maintenance will take place. This value is in RFC3339 text format. DEPRECATED: Use window_start_time instead.
  /// [type] Defines the type of maintenance.
  /// [windowEndTime] The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  /// [windowStartTime] The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  const UpcomingMaintenanceResponse({
    required this.canReschedule,
    required this.date,
    required this.latestWindowStartTime,
    required this.maintenanceStatus,
    required this.startTimeWindow,
    required this.time,
    required this.type,
    required this.windowEndTime,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': canReschedule,
      'date': date,
      'latestWindowStartTime': latestWindowStartTime,
      'maintenanceStatus': maintenanceStatus,
      'startTimeWindow': pulumi.Input.mapInputValue<UpcomingMaintenanceTimeWindowResponse, Map<String, dynamic>>(startTimeWindow, (value) => value.toMap()),
      'time': time,
      'type': type,
      'windowEndTime': windowEndTime,
      'windowStartTime': windowStartTime,
    };
  }

  factory UpcomingMaintenanceResponse.fromMap(Map<String, dynamic> map) {
    return UpcomingMaintenanceResponse(
      canReschedule: pulumi.Input.fromValue(map['canReschedule'] as bool),
      date: pulumi.Input.fromValue(map['date'] as String),
      latestWindowStartTime: pulumi.Input.fromValue(map['latestWindowStartTime'] as String),
      maintenanceStatus: pulumi.Input.fromValue(map['maintenanceStatus'] as String),
      startTimeWindow: pulumi.Input.fromValue(UpcomingMaintenanceTimeWindowResponse.fromMap((map['startTimeWindow']! as Map).cast<String, dynamic>())),
      time: pulumi.Input.fromValue(map['time'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      windowEndTime: pulumi.Input.fromValue(map['windowEndTime'] as String),
      windowStartTime: pulumi.Input.fromValue(map['windowStartTime'] as String),
    );
  }
}
