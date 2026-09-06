// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebPubSubPrivateEndpointConnection.
class GetWebPubSubPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Group IDs
  final List<String>? groupIds;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Private endpoint
  final PrivateEndpointResponse? privateEndpoint;
  /// Connection state of the private endpoint connection
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWebPubSubPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupIds] Group IDs
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [privateEndpoint] Private endpoint
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebPubSubPrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.groupIds,
    this.id,
    this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'groupIds': ?groupIds,
      'id': ?id,
      'name': ?name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWebPubSubPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubPrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return PrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
