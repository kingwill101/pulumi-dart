// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageSyncService.
class GetStorageSyncServiceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// Incoming Traffic Policy
  final String? incomingTrafficPolicy;
  /// Resource Last Operation Name
  final String? lastOperationName;
  /// StorageSyncService lastWorkflowId
  final String? lastWorkflowId;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// List of private endpoint connection associated with the specified storage sync service
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// StorageSyncService Provisioning State
  final String? provisioningState;
  /// Storage Sync service status.
  final int? storageSyncServiceStatus;
  /// Storage Sync service Uid
  final String? storageSyncServiceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Use Identity authorization when customer have finished setup RBAC permissions.
  final bool? useIdentity;

  /// Creates a new [GetStorageSyncServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [incomingTrafficPolicy] Incoming Traffic Policy
  /// [lastOperationName] Resource Last Operation Name
  /// [lastWorkflowId] StorageSyncService lastWorkflowId
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connection associated with the specified storage sync service
  /// [provisioningState] StorageSyncService Provisioning State
  /// [storageSyncServiceStatus] Storage Sync service status.
  /// [storageSyncServiceUid] Storage Sync service Uid
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useIdentity] Use Identity authorization when customer have finished setup RBAC permissions.
  const GetStorageSyncServiceResult({
    this.azureApiVersion,
    this.id,
    this.identity,
    this.incomingTrafficPolicy,
    this.lastOperationName,
    this.lastWorkflowId,
    this.location,
    this.name,
    this.privateEndpointConnections,
    this.provisioningState,
    this.storageSyncServiceStatus,
    this.storageSyncServiceUid,
    this.systemData,
    this.tags,
    this.type,
    this.useIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'incomingTrafficPolicy': ?incomingTrafficPolicy,
      'lastOperationName': ?lastOperationName,
      'lastWorkflowId': ?lastWorkflowId,
      'location': ?location,
      'name': ?name,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'storageSyncServiceStatus': ?storageSyncServiceStatus,
      'storageSyncServiceUid': ?storageSyncServiceUid,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'useIdentity': ?useIdentity,
    };
  }

  factory GetStorageSyncServiceResult.fromMap(Map<String, dynamic> map) {
    return GetStorageSyncServiceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      incomingTrafficPolicy: (() { final guardedValue = map['incomingTrafficPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOperationName: (() { final guardedValue = map['lastOperationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastWorkflowId: (() { final guardedValue = map['lastWorkflowId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageSyncServiceStatus: (() { final guardedValue = map['storageSyncServiceStatus']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      storageSyncServiceUid: (() { final guardedValue = map['storageSyncServiceUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useIdentity: (() { final guardedValue = map['useIdentity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
