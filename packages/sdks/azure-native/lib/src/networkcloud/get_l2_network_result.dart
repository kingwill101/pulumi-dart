// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getL2Network.
class GetL2NetworkResult {
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  final List<String> associatedResourceIds;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The resource ID of the Network Cloud cluster this L2 network is associated with.
  final String clusterId;

  /// The more detailed status of the L2 network.
  final String detailedStatus;

  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;

  /// Resource ETag.
  final String etag;

  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;

  /// Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource ID(s) that are associated with this L2 network.
  final List<String> hybridAksClustersAssociatedIds;

  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  final String? hybridAksPluginType;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The default interface name for this L2 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  final String? interfaceName;

  /// The resource ID of the Network Fabric l2IsolationDomain.
  final String l2IsolationDomainId;

  /// The geo-location where the resource lives
  final String location;

  /// The name of the resource
  final String name;

  /// The provisioning state of the L2 network.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource ID(s), excluding any Hybrid AKS virtual machines, that are currently using this L2 network.
  final List<String> virtualMachinesAssociatedIds;

  /// Creates a new [GetL2NetworkResult].
  /// [associatedResourceIds] The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] The resource ID of the Network Cloud cluster this L2 network is associated with.
  /// [detailedStatus] The more detailed status of the L2 network.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksClustersAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource ID(s) that are associated with this L2 network.
  /// [hybridAksPluginType] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [interfaceName] The default interface name for this L2 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  /// [l2IsolationDomainId] The resource ID of the Network Fabric l2IsolationDomain.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the L2 network.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachinesAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource ID(s), excluding any Hybrid AKS virtual machines, that are currently using this L2 network.
  GetL2NetworkResult({
    required this.associatedResourceIds,
    required this.azureApiVersion,
    required this.clusterId,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.hybridAksClustersAssociatedIds,
    this.hybridAksPluginType,
    required this.id,
    this.interfaceName,
    required this.l2IsolationDomainId,
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
      'associatedResourceIds': associatedResourceIds,
      'azureApiVersion': azureApiVersion,
      'clusterId': clusterId,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'hybridAksClustersAssociatedIds': hybridAksClustersAssociatedIds,
      'hybridAksPluginType': ?hybridAksPluginType,
      'id': id,
      'interfaceName': ?interfaceName,
      'l2IsolationDomainId': l2IsolationDomainId,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualMachinesAssociatedIds': virtualMachinesAssociatedIds,
    };
  }

  factory GetL2NetworkResult.fromMap(Map<String, dynamic> map) {
    return GetL2NetworkResult(
      associatedResourceIds: (map['associatedResourceIds'] as List)
          .cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      clusterId: map['clusterId'] as String,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap(
        (map['extendedLocation']! as Map).cast<String, dynamic>(),
      ),
      hybridAksClustersAssociatedIds:
          (map['hybridAksClustersAssociatedIds'] as List).cast<String>(),
      hybridAksPluginType: (() {
        final guardedValue = map['hybridAksPluginType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      interfaceName: (() {
        final guardedValue = map['interfaceName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      l2IsolationDomainId: map['l2IsolationDomainId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      virtualMachinesAssociatedIds:
          (map['virtualMachinesAssociatedIds'] as List).cast<String>(),
    );
  }
}
