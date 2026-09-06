// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLinkedServer.
class GetLinkedServerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The unchanging DNS name which will always point to current geo-primary cache among the linked redis caches for seamless Geo Failover experience.
  final String? geoReplicatedPrimaryHostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Fully qualified resourceId of the linked redis cache.
  final String? linkedRedisCacheId;
  /// Location of the linked redis cache.
  final String? linkedRedisCacheLocation;
  /// The name of the resource
  final String? name;
  /// The changing DNS name that resolves to the current geo-primary cache among the linked redis caches before or after the Geo Failover.
  final String? primaryHostName;
  /// Terminal state of the link between primary and secondary redis cache.
  final String? provisioningState;
  /// Role of the linked server.
  final String? serverRole;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetLinkedServerResult({
    this.azureApiVersion,
    this.geoReplicatedPrimaryHostName,
    this.id,
    this.linkedRedisCacheId,
    this.linkedRedisCacheLocation,
    this.name,
    this.primaryHostName,
    this.provisioningState,
    this.serverRole,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'geoReplicatedPrimaryHostName': ?geoReplicatedPrimaryHostName,
      'id': ?id,
      'linkedRedisCacheId': ?linkedRedisCacheId,
      'linkedRedisCacheLocation': ?linkedRedisCacheLocation,
      'name': ?name,
      'primaryHostName': ?primaryHostName,
      'provisioningState': ?provisioningState,
      'serverRole': ?serverRole,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetLinkedServerResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedServerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      geoReplicatedPrimaryHostName: (() { final guardedValue = map['geoReplicatedPrimaryHostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedRedisCacheId: (() { final guardedValue = map['linkedRedisCacheId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedRedisCacheLocation: (() { final guardedValue = map['linkedRedisCacheLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryHostName: (() { final guardedValue = map['primaryHostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverRole: (() { final guardedValue = map['serverRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
