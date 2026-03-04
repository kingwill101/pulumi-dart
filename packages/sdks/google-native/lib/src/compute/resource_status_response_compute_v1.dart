// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upcoming_maintenance_response_compute_v1.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponseComputeV1 {
  /// An opaque ID of the host on which the VM is running.
  final pulumi.Input<String> physicalHost;
  final pulumi.Input<UpcomingMaintenanceResponseComputeV1> upcomingMaintenance;

  /// Creates a new [ResourceStatusResponseComputeV1].
  /// [physicalHost] An opaque ID of the host on which the VM is running.
  /// [upcomingMaintenance] Required.
  ResourceStatusResponseComputeV1({
    required this.physicalHost,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalHost': physicalHost,
      'upcomingMaintenance':
          pulumi.Input.mapInputValue<
            UpcomingMaintenanceResponseComputeV1,
            Map<String, dynamic>
          >(upcomingMaintenance, (value) => value.toMap()),
    };
  }

  factory ResourceStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponseComputeV1(
      physicalHost: pulumi.Input.fromValue(map['physicalHost'] as String),
      upcomingMaintenance: pulumi.Input.fromValue(
        UpcomingMaintenanceResponseComputeV1.fromMap(
          (map['upcomingMaintenance']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
