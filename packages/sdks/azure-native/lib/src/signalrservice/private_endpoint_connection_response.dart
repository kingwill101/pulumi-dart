// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// A private endpoint connection to an azure resource
class PrivateEndpointConnectionResponse {
  /// Group IDs
  final pulumi.Input<List<String>> groupIds;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;

  /// The name of the resource
  final pulumi.Input<String> name;

  /// Private endpoint
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;

  /// Connection state of the private endpoint connection
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>?
  privateLinkServiceConnectionState;

  /// Provisioning state of the resource.
  final pulumi.Input<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [groupIds] Group IDs
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateEndpoint] Private endpoint
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PrivateEndpointConnectionResponse({
    required this.groupIds,
    required this.id,
    required this.name,
    this.privateEndpoint,
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
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointResponse,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionStateResponse,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData':
          pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(
            systemData,
            (value) => value.toMap(),
          ),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      groupIds: pulumi.Input.fromValue(
        (map['groupIds'] as List).cast<String>(),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionStateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      systemData: pulumi.Input.fromValue(
        SystemDataResponse.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
