// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

/// Time window specified for daily maintenance operations. GCE's internal maintenance will be performed within this window.
class NodeGroupMaintenanceWindowResponse {
  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final pulumi.Input<String> duration;
  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final pulumi.Input<DurationResponse> maintenanceDuration;
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final pulumi.Input<String> startTime;

  /// Creates a new [NodeGroupMaintenanceWindowResponse].
  /// [duration] [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  /// [maintenanceDuration] [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  NodeGroupMaintenanceWindowResponse({
    required this.duration,
    required this.maintenanceDuration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'maintenanceDuration': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(maintenanceDuration, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory NodeGroupMaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return NodeGroupMaintenanceWindowResponse(
      duration: (map['duration'] as String).input(),
      maintenanceDuration: (DurationResponse.fromMap((map['maintenanceDuration'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

