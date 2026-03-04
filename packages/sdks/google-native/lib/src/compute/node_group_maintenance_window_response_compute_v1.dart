// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response_compute_v1.dart';

/// Time window specified for daily maintenance operations. GCE's internal maintenance will be performed within this window.
class NodeGroupMaintenanceWindowResponseComputeV1 {
  /// [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  final pulumi.Input<DurationResponseComputeV1> maintenanceDuration;

  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final pulumi.Input<String> startTime;

  /// Creates a new [NodeGroupMaintenanceWindowResponseComputeV1].
  /// [maintenanceDuration] [Output only] A predetermined duration for the window, automatically chosen to be the smallest possible in the given scenario.
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  NodeGroupMaintenanceWindowResponseComputeV1({
    required this.maintenanceDuration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maintenanceDuration':
          pulumi.Input.mapInputValue<
            DurationResponseComputeV1,
            Map<String, dynamic>
          >(maintenanceDuration, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory NodeGroupMaintenanceWindowResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeGroupMaintenanceWindowResponseComputeV1(
      maintenanceDuration: pulumi.Input.fromValue(
        DurationResponseComputeV1.fromMap(
          (map['maintenanceDuration']! as Map).cast<String, dynamic>(),
        ),
      ),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
