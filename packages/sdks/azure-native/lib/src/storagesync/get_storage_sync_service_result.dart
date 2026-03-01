// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageSyncService.
class GetStorageSyncServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// Incoming Traffic Policy
  final String? incomingTrafficPolicy;
  /// Resource Last Operation Name
  final String lastOperationName;
  /// StorageSyncService lastWorkflowId
  final String lastWorkflowId;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// List of private endpoint connection associated with the specified storage sync service
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// StorageSyncService Provisioning State
  final String provisioningState;
  /// Storage Sync service status.
  final int storageSyncServiceStatus;
  /// Storage Sync service Uid
  final String storageSyncServiceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Use Identity authorization when customer have finished setup RBAC permissions.
  final bool useIdentity;

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
  GetStorageSyncServiceResult({
    required this.azureApiVersion,
    required this.id,
    this.identity,
    this.incomingTrafficPolicy,
    required this.lastOperationName,
    required this.lastWorkflowId,
    required this.location,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    required this.storageSyncServiceStatus,
    required this.storageSyncServiceUid,
    required this.systemData,
    this.tags,
    required this.type,
    required this.useIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'incomingTrafficPolicy': ?incomingTrafficPolicy,
      'lastOperationName': lastOperationName,
      'lastWorkflowId': lastWorkflowId,
      'location': location,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'storageSyncServiceStatus': storageSyncServiceStatus,
      'storageSyncServiceUid': storageSyncServiceUid,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'useIdentity': useIdentity,
    };
  }

  factory GetStorageSyncServiceResult.fromMap(Map<String, dynamic> map) {
    return GetStorageSyncServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      incomingTrafficPolicy: map['incomingTrafficPolicy'] == null ? null : map['incomingTrafficPolicy'] as String,
      lastOperationName: map['lastOperationName'] as String,
      lastWorkflowId: map['lastWorkflowId'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      storageSyncServiceStatus: map['storageSyncServiceStatus'] as int,
      storageSyncServiceUid: map['storageSyncServiceUid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      useIdentity: map['useIdentity'] as bool,
    );
  }
}

