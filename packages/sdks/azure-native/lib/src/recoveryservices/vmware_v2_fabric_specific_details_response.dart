// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'process_server_details_response.dart';

/// VMwareV2 fabric specific details.
class VMwareV2FabricSpecificDetailsResponse {
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'VMwareV2'.
  final pulumi.Input<String> instanceType;
  /// The Migration solution ARM Id.
  final pulumi.Input<String> migrationSolutionId;
  /// The ARM Id of the physical site.
  final pulumi.Input<String> physicalSiteId;
  /// The list of process servers.
  final pulumi.Input<List<ProcessServerDetailsResponse>> processServers;
  /// The service container Id.
  final pulumi.Input<String> serviceContainerId;
  /// The service endpoint.
  final pulumi.Input<String> serviceEndpoint;
  /// The service resource Id.
  final pulumi.Input<String> serviceResourceId;
  /// The ARM Id of the VMware site.
  final pulumi.Input<String> vmwareSiteId;

  /// Creates a new [VMwareV2FabricSpecificDetailsResponse].
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [migrationSolutionId] The Migration solution ARM Id.
  /// [physicalSiteId] The ARM Id of the physical site.
  /// [processServers] The list of process servers.
  /// [serviceContainerId] The service container Id.
  /// [serviceEndpoint] The service endpoint.
  /// [serviceResourceId] The service resource Id.
  /// [vmwareSiteId] The ARM Id of the VMware site.
  const VMwareV2FabricSpecificDetailsResponse({
    required this.instanceType,
    required this.migrationSolutionId,
    required this.physicalSiteId,
    required this.processServers,
    required this.serviceContainerId,
    required this.serviceEndpoint,
    required this.serviceResourceId,
    required this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
      'physicalSiteId': physicalSiteId,
      'processServers': pulumi.Input.mapInputValue<List<ProcessServerDetailsResponse>, List<Map<String, dynamic>>>(processServers, (value) => pulumi.Input.encodeList<ProcessServerDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceContainerId': serviceContainerId,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory VMwareV2FabricSpecificDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareV2FabricSpecificDetailsResponse(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      migrationSolutionId: pulumi.Input.fromValue(map['migrationSolutionId'] as String),
      physicalSiteId: pulumi.Input.fromValue(map['physicalSiteId'] as String),
      processServers: pulumi.Input.fromValue(pulumi.Input.decodeList<ProcessServerDetailsResponse>(map['processServers']!, (value) => ProcessServerDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceContainerId: pulumi.Input.fromValue(map['serviceContainerId'] as String),
      serviceEndpoint: pulumi.Input.fromValue(map['serviceEndpoint'] as String),
      serviceResourceId: pulumi.Input.fromValue(map['serviceResourceId'] as String),
      vmwareSiteId: pulumi.Input.fromValue(map['vmwareSiteId'] as String),
    );
  }
}
