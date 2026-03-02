// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state_response.dart';
import 'resource_id_response.dart';
import 'system_data_response.dart';

/// REST model used to encapsulate Private Link properties for tracked resources.
class PrivateEndpointConnectionResponse {
  /// array of group ids
  final pulumi.Input<List<String>> groupIds;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// private endpoints
  final pulumi.Input<ResourceIdResponse> privateEndpoint;
  /// private endpoints connection state
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>? privateLinkServiceConnectionState;
  /// provisioning state enum
  final pulumi.Input<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] array of group ids
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [privateEndpoint] private endpoints
  /// [privateLinkServiceConnectionState] private endpoints connection state
  /// [provisioningState] provisioning state enum
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PrivateEndpointConnectionResponse({
    required this.groupIds,
    required this.id,
    required this.name,
    required this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': groupIds,
      'id': id,
      'name': name,
      'privateEndpoint': pulumi.Input.mapInputValue<ResourceIdResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: ((map['groupIds'] as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      privateEndpoint: (ResourceIdResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

