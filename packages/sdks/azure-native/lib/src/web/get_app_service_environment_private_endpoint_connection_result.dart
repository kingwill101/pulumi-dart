// ignore_for_file: unused_element, unnecessary_cast

import 'arm_id_wrapper_response.dart';
import 'private_link_connection_state_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAppServiceEnvironmentPrivateEndpointConnection.
class GetAppServiceEnvironmentPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Private IPAddresses mapped to the remote private endpoint
  final List<String>? ipAddresses;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// PrivateEndpoint of a remote private endpoint connection
  final ArmIdWrapperResponse? privateEndpoint;
  /// The state of a private link connection
  final PrivateLinkConnectionStateResponse? privateLinkServiceConnectionState;
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAppServiceEnvironmentPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [ipAddresses] Private IPAddresses mapped to the remote private endpoint
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [privateEndpoint] PrivateEndpoint of a remote private endpoint connection
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [provisioningState] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAppServiceEnvironmentPrivateEndpointConnectionResult({
    this.azureApiVersion,
    this.id,
    this.ipAddresses,
    this.kind,
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
      'id': ?id,
      'ipAddresses': ?ipAddresses,
      'kind': ?kind,
      'name': ?name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState?.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAppServiceEnvironmentPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentPrivateEndpointConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return ArmIdWrapperResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return PrivateLinkConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
