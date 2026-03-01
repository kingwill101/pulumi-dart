// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLinkedServer.
class GetLinkedServerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The unchanging DNS name which will always point to current geo-primary cache among the linked redis caches for seamless Geo Failover experience.
  final String geoReplicatedPrimaryHostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Fully qualified resourceId of the linked redis cache.
  final String linkedRedisCacheId;
  /// Location of the linked redis cache.
  final String linkedRedisCacheLocation;
  /// The name of the resource
  final String name;
  /// The changing DNS name that resolves to the current geo-primary cache among the linked redis caches before or after the Geo Failover.
  final String primaryHostName;
  /// Terminal state of the link between primary and secondary redis cache.
  final String provisioningState;
  /// Role of the linked server.
  final String serverRole;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLinkedServerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [geoReplicatedPrimaryHostName] The unchanging DNS name which will always point to current geo-primary cache among the linked redis caches for seamless Geo Failover experience.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [linkedRedisCacheId] Fully qualified resourceId of the linked redis cache.
  /// [linkedRedisCacheLocation] Location of the linked redis cache.
  /// [name] The name of the resource
  /// [primaryHostName] The changing DNS name that resolves to the current geo-primary cache among the linked redis caches before or after the Geo Failover.
  /// [provisioningState] Terminal state of the link between primary and secondary redis cache.
  /// [serverRole] Role of the linked server.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLinkedServerResult({
    required this.azureApiVersion,
    required this.geoReplicatedPrimaryHostName,
    required this.id,
    required this.linkedRedisCacheId,
    required this.linkedRedisCacheLocation,
    required this.name,
    required this.primaryHostName,
    required this.provisioningState,
    required this.serverRole,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'geoReplicatedPrimaryHostName': geoReplicatedPrimaryHostName,
      'id': id,
      'linkedRedisCacheId': linkedRedisCacheId,
      'linkedRedisCacheLocation': linkedRedisCacheLocation,
      'name': name,
      'primaryHostName': primaryHostName,
      'provisioningState': provisioningState,
      'serverRole': serverRole,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetLinkedServerResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedServerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      geoReplicatedPrimaryHostName: map['geoReplicatedPrimaryHostName'] as String,
      id: map['id'] as String,
      linkedRedisCacheId: map['linkedRedisCacheId'] as String,
      linkedRedisCacheLocation: map['linkedRedisCacheLocation'] as String,
      name: map['name'] as String,
      primaryHostName: map['primaryHostName'] as String,
      provisioningState: map['provisioningState'] as String,
      serverRole: map['serverRole'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

