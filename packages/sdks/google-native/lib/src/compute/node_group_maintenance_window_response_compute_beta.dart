// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_beta.dart';

/// Time window specified for daily maintenance operations. GCE's internal maintenance will be performed within this window.
class NodeGroupMaintenanceWindowResponseComputeBeta {
  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final pulumi.Input<DurationResponseComputeBeta> maintenanceDuration;
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final pulumi.Input<String> startTime;

  /// Creates a new [NodeGroupMaintenanceWindowResponseComputeBeta].
  /// [maintenanceDuration] [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  NodeGroupMaintenanceWindowResponseComputeBeta({
    required this.maintenanceDuration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceDuration': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(maintenanceDuration, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory NodeGroupMaintenanceWindowResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return NodeGroupMaintenanceWindowResponseComputeBeta(
      maintenanceDuration: (DurationResponseComputeBeta.fromMap((map['maintenanceDuration'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

