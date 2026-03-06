// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_endpoint_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloudServicesNetwork.
class GetCloudServicesNetworkResult {
  /// The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  final List<EgressEndpointResponse>? additionalEgressEndpoints;
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  final List<String> associatedResourceIds;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the Network Cloud cluster this cloud services network is associated with.
  final String clusterId;
  /// The more detailed status of the cloud services network.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// The indicator of whether the platform default endpoints are allowed for the egress traffic.
  final String? enableDefaultEgressEndpoints;
  /// The full list of additional and default egress endpoints that are currently enabled.
  final List<EgressEndpointResponse> enabledEgressEndpoints;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource IDs that are associated with this cloud services network.
  final List<String> hybridAksClustersAssociatedIds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the interface that will be present in the virtual machine to represent this network.
  final String interfaceName;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the cloud services network.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource IDs, excluding any Hybrid AKS virtual machines, that are currently using this cloud services network.
  final List<String> virtualMachinesAssociatedIds;

  /// Creates a new [GetCloudServicesNetworkResult].
  /// [additionalEgressEndpoints] The list of egress endpoints. This allows for connection from a Hybrid AKS cluster to the specified endpoint.
  /// [associatedResourceIds] The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] The resource ID of the Network Cloud cluster this cloud services network is associated with.
  /// [detailedStatus] The more detailed status of the cloud services network.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [enableDefaultEgressEndpoints] The indicator of whether the platform default endpoints are allowed for the egress traffic.
  /// [enabledEgressEndpoints] The full list of additional and default egress endpoints that are currently enabled.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksClustersAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource IDs that are associated with this cloud services network.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [interfaceName] The name of the interface that will be present in the virtual machine to represent this network.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the cloud services network.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachinesAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource IDs, excluding any Hybrid AKS virtual machines, that are currently using this cloud services network.
  const GetCloudServicesNetworkResult({
    this.additionalEgressEndpoints,
    required this.associatedResourceIds,
    required this.azureApiVersion,
    required this.clusterId,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    this.enableDefaultEgressEndpoints,
    required this.enabledEgressEndpoints,
    required this.etag,
    required this.extendedLocation,
    required this.hybridAksClustersAssociatedIds,
    required this.id,
    required this.interfaceName,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.virtualMachinesAssociatedIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEgressEndpoints': ?(() { final guardedValue = additionalEgressEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<EgressEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'associatedResourceIds': associatedResourceIds,
      'azureApiVersion': azureApiVersion,
      'clusterId': clusterId,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'enableDefaultEgressEndpoints': ?enableDefaultEgressEndpoints,
      'enabledEgressEndpoints': pulumi.Input.encodeList<EgressEndpointResponse, Map<String, dynamic>>(enabledEgressEndpoints, (value) => value.toMap()),
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'hybridAksClustersAssociatedIds': hybridAksClustersAssociatedIds,
      'id': id,
      'interfaceName': interfaceName,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualMachinesAssociatedIds': virtualMachinesAssociatedIds,
    };
  }

  factory GetCloudServicesNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetCloudServicesNetworkResult(
      additionalEgressEndpoints: (() { final guardedValue = map['additionalEgressEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EgressEndpointResponse>(guardedValue, (value) => EgressEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      associatedResourceIds: (map['associatedResourceIds'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterId: map['clusterId'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      enableDefaultEgressEndpoints: (() { final guardedValue = map['enableDefaultEgressEndpoints']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledEgressEndpoints: pulumi.Input.decodeList<EgressEndpointResponse>(map['enabledEgressEndpoints']!, (value) => EgressEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      hybridAksClustersAssociatedIds: (map['hybridAksClustersAssociatedIds'] as List).cast<String>(),
      id: map['id'] as String,
      interfaceName: map['interfaceName'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualMachinesAssociatedIds: (map['virtualMachinesAssociatedIds'] as List).cast<String>(),
    );
  }
}

