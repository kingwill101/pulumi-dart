// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getL3Network.
class GetL3NetworkResult {
  /// The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  final List<String>? associatedResourceIds;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID of the Network Cloud cluster this L3 network is associated with.
  final String? clusterId;
  /// The more detailed status of the L3 network.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource IDs that are associated with this L3 network.
  final List<String>? hybridAksClustersAssociatedIds;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The indicator of whether or not to disable IPAM allocation on the network attachment definition injected into the Hybrid AKS Cluster.
  final String? hybridAksIpamEnabled;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  final String? hybridAksPluginType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The default interface name for this L3 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  final String? interfaceName;
  /// The type of the IP address allocation, defaulted to "DualStack".
  final String? ipAllocationType;
  /// The IPV4 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// is IPV4 or DualStack.
  final String? ipv4ConnectedPrefix;
  /// The IPV6 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// is IPV6 or DualStack.
  final String? ipv6ConnectedPrefix;
  /// The resource ID of the Network Fabric l3IsolationDomain.
  final String? l3IsolationDomainId;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The provisioning state of the L3 network.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource IDs, excluding any Hybrid AKS virtual machines, that are currently using this L3 network.
  final List<String>? virtualMachinesAssociatedIds;
  /// The VLAN from the l3IsolationDomain that is used for this network.
  final double? vlan;

  /// Creates a new [GetL3NetworkResult].
  /// [associatedResourceIds] The list of resource IDs for the other Microsoft.NetworkCloud resources that have attached this network.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] The resource ID of the Network Cloud cluster this L3 network is associated with.
  /// [detailedStatus] The more detailed status of the L3 network.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [hybridAksClustersAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of Hybrid AKS cluster resource IDs that are associated with this L3 network.
  /// [hybridAksIpamEnabled] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The indicator of whether or not to disable IPAM allocation on the network attachment definition injected into the Hybrid AKS Cluster.
  /// [hybridAksPluginType] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The network plugin type for Hybrid AKS.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [interfaceName] The default interface name for this L3 network in the virtual machine. This name can be overridden by the name supplied in the network attachment configuration of that virtual machine.
  /// [ipAllocationType] The type of the IP address allocation, defaulted to "DualStack".
  /// [ipv4ConnectedPrefix] The IPV4 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// [ipv6ConnectedPrefix] The IPV6 prefix (CIDR) assigned to this L3 network. Required when the IP allocation type
  /// [l3IsolationDomainId] The resource ID of the Network Fabric l3IsolationDomain.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the L3 network.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualMachinesAssociatedIds] Field Deprecated. These fields will be empty/omitted. The list of virtual machine resource IDs, excluding any Hybrid AKS virtual machines, that are currently using this L3 network.
  /// [vlan] The VLAN from the l3IsolationDomain that is used for this network.
  GetL3NetworkResult({
    this.associatedResourceIds,
    this.azureApiVersion,
    this.clusterId,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.extendedLocation,
    this.hybridAksClustersAssociatedIds,
    String? hybridAksIpamEnabled,
    String? hybridAksPluginType,
    this.id,
    this.interfaceName,
    String? ipAllocationType,
    this.ipv4ConnectedPrefix,
    this.ipv6ConnectedPrefix,
    this.l3IsolationDomainId,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.virtualMachinesAssociatedIds,
    this.vlan,
  }) : hybridAksIpamEnabled = hybridAksIpamEnabled ?? 'True', hybridAksPluginType = hybridAksPluginType ?? 'SRIOV', ipAllocationType = ipAllocationType ?? 'DualStack';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedResourceIds': ?associatedResourceIds,
      'azureApiVersion': ?azureApiVersion,
      'clusterId': ?clusterId,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'hybridAksClustersAssociatedIds': ?hybridAksClustersAssociatedIds,
      'hybridAksIpamEnabled': ?hybridAksIpamEnabled,
      'hybridAksPluginType': ?hybridAksPluginType,
      'id': ?id,
      'interfaceName': ?interfaceName,
      'ipAllocationType': ?ipAllocationType,
      'ipv4ConnectedPrefix': ?ipv4ConnectedPrefix,
      'ipv6ConnectedPrefix': ?ipv6ConnectedPrefix,
      'l3IsolationDomainId': ?l3IsolationDomainId,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'virtualMachinesAssociatedIds': ?virtualMachinesAssociatedIds,
      'vlan': ?vlan,
    };
  }

  factory GetL3NetworkResult.fromMap(Map<String, dynamic> map) {
    return GetL3NetworkResult(
      associatedResourceIds: (() { final guardedValue = map['associatedResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hybridAksClustersAssociatedIds: (() { final guardedValue = map['hybridAksClustersAssociatedIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hybridAksIpamEnabled: (() { final guardedValue = map['hybridAksIpamEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hybridAksPluginType: (() { final guardedValue = map['hybridAksPluginType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaceName: (() { final guardedValue = map['interfaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAllocationType: (() { final guardedValue = map['ipAllocationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4ConnectedPrefix: (() { final guardedValue = map['ipv4ConnectedPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6ConnectedPrefix: (() { final guardedValue = map['ipv6ConnectedPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      l3IsolationDomainId: (() { final guardedValue = map['l3IsolationDomainId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualMachinesAssociatedIds: (() { final guardedValue = map['virtualMachinesAssociatedIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
