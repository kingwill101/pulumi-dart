// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_status_scheduling_response_compute_beta.dart';
import 'upcoming_maintenance_response_compute_beta.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponseComputeBeta {
  /// An opaque ID of the host on which the VM is running.
  final pulumi.Input<String> physicalHost;
  final pulumi.Input<ResourceStatusSchedulingResponseComputeBeta> scheduling;
  final pulumi.Input<UpcomingMaintenanceResponseComputeBeta>
  upcomingMaintenance;

  /// Creates a new [ResourceStatusResponseComputeBeta].
  /// [physicalHost] An opaque ID of the host on which the VM is running.
  /// [scheduling] Required.
  /// [upcomingMaintenance] Required.
  ResourceStatusResponseComputeBeta({
    required this.physicalHost,
    required this.scheduling,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalHost': physicalHost,
      'scheduling':
          pulumi.Input.mapInputValue<
            ResourceStatusSchedulingResponseComputeBeta,
            Map<String, dynamic>
          >(scheduling, (value) => value.toMap()),
      'upcomingMaintenance':
          pulumi.Input.mapInputValue<
            UpcomingMaintenanceResponseComputeBeta,
            Map<String, dynamic>
          >(upcomingMaintenance, (value) => value.toMap()),
    };
  }

  factory ResourceStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponseComputeBeta(
      physicalHost: pulumi.Input.fromValue(map['physicalHost'] as String),
      scheduling: pulumi.Input.fromValue(
        ResourceStatusSchedulingResponseComputeBeta.fromMap(
          (map['scheduling']! as Map).cast<String, dynamic>(),
        ),
      ),
      upcomingMaintenance: pulumi.Input.fromValue(
        UpcomingMaintenanceResponseComputeBeta.fromMap(
          (map['upcomingMaintenance']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
