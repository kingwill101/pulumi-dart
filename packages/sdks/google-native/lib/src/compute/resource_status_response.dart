// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_status_last_instance_termination_details_response.dart';
import 'resource_status_scheduling_response.dart';
import 'resource_status_shutdown_details_response.dart';
import 'upcoming_maintenance_response.dart';

/// Contains output only fields. Use this sub-message for actual values set on Instance attributes as compared to the value requested by the user (intent) in their instance CRUD calls.
class ResourceStatusResponse {
  /// Contains last termination details why the instance was terminated.
  final pulumi.Input<ResourceStatusLastInstanceTerminationDetailsResponse> lastInstanceTerminationDetails;
  /// An opaque ID of the host on which the VM is running.
  final pulumi.Input<String> physicalHost;
  final pulumi.Input<ResourceStatusSchedulingResponse> scheduling;
  /// Represents the status of the service integration specs defined by the user in instance.serviceIntegrationSpecs.
  final pulumi.Input<Map<String, String>> serviceIntegrationStatuses;
  /// Details about stopping state of instance
  final pulumi.Input<ResourceStatusShutdownDetailsResponse> shutdownDetails;
  final pulumi.Input<UpcomingMaintenanceResponse> upcomingMaintenance;

  /// Creates a new [ResourceStatusResponse].
  /// [lastInstanceTerminationDetails] Contains last termination details why the instance was terminated.
  /// [physicalHost] An opaque ID of the host on which the VM is running.
  /// [scheduling] Required.
  /// [serviceIntegrationStatuses] Represents the status of the service integration specs defined by the user in instance.serviceIntegrationSpecs.
  /// [shutdownDetails] Details about stopping state of instance
  /// [upcomingMaintenance] Required.
  const ResourceStatusResponse({
    required this.lastInstanceTerminationDetails,
    required this.physicalHost,
    required this.scheduling,
    required this.serviceIntegrationStatuses,
    required this.shutdownDetails,
    required this.upcomingMaintenance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastInstanceTerminationDetails': pulumi.Input.mapInputValue<ResourceStatusLastInstanceTerminationDetailsResponse, Map<String, dynamic>>(lastInstanceTerminationDetails, (value) => value.toMap()),
      'physicalHost': physicalHost,
      'scheduling': pulumi.Input.mapInputValue<ResourceStatusSchedulingResponse, Map<String, dynamic>>(scheduling, (value) => value.toMap()),
      'serviceIntegrationStatuses': serviceIntegrationStatuses,
      'shutdownDetails': pulumi.Input.mapInputValue<ResourceStatusShutdownDetailsResponse, Map<String, dynamic>>(shutdownDetails, (value) => value.toMap()),
      'upcomingMaintenance': pulumi.Input.mapInputValue<UpcomingMaintenanceResponse, Map<String, dynamic>>(upcomingMaintenance, (value) => value.toMap()),
    };
  }

  factory ResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceStatusResponse(
      lastInstanceTerminationDetails: pulumi.Input.fromValue(ResourceStatusLastInstanceTerminationDetailsResponse.fromMap((map['lastInstanceTerminationDetails']! as Map).cast<String, dynamic>())),
      physicalHost: pulumi.Input.fromValue(map['physicalHost'] as String),
      scheduling: pulumi.Input.fromValue(ResourceStatusSchedulingResponse.fromMap((map['scheduling']! as Map).cast<String, dynamic>())),
      serviceIntegrationStatuses: pulumi.Input.fromValue((map['serviceIntegrationStatuses'] as Map).cast<String, String>()),
      shutdownDetails: pulumi.Input.fromValue(ResourceStatusShutdownDetailsResponse.fromMap((map['shutdownDetails']! as Map).cast<String, dynamic>())),
      upcomingMaintenance: pulumi.Input.fromValue(UpcomingMaintenanceResponse.fromMap((map['upcomingMaintenance']! as Map).cast<String, dynamic>())),
    );
  }
}
