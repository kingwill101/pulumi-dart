// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualNetworkLink.
class GetVirtualNetworkLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ETag of the virtual network link.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The Azure Region where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  final String provisioningState;
  /// Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  final bool? registrationEnabled;
  /// The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
  final String? resolutionPolicy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The reference of the virtual network.
  final SubResourceResponse? virtualNetwork;
  /// The status of the virtual network link to the Private DNS zone. Possible values are 'InProgress' and 'Done'. This is a read-only property and any attempt to set this value will be ignored.
  final String virtualNetworkLinkState;

  /// Creates a new [GetVirtualNetworkLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag of the virtual network link.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The Azure Region where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the resource. This is a read-only property and any attempt to set this value will be ignored.
  /// [registrationEnabled] Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled?
  /// [resolutionPolicy] The resolution policy on the virtual network link. Only applicable for virtual network links to privatelink zones, and for A,AAAA,CNAME queries. When set to 'NxDomainRedirect', Azure DNS resolver falls back to public resolution if private dns query resolution results in non-existent domain response.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [virtualNetwork] The reference of the virtual network.
  /// [virtualNetworkLinkState] The status of the virtual network link to the Private DNS zone. Possible values are 'InProgress' and 'Done'. This is a read-only property and any attempt to set this value will be ignored.
  const GetVirtualNetworkLinkResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.registrationEnabled,
    this.resolutionPolicy,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualNetwork,
    required this.virtualNetworkLinkState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'registrationEnabled': ?registrationEnabled,
      'resolutionPolicy': ?resolutionPolicy,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetwork': ?virtualNetwork?.toMap(),
      'virtualNetworkLinkState': virtualNetworkLinkState,
    };
  }

  factory GetVirtualNetworkLinkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      registrationEnabled: (() { final guardedValue = map['registrationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resolutionPolicy: (() { final guardedValue = map['resolutionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      virtualNetworkLinkState: map['virtualNetworkLinkState'] as String,
    );
  }
}
