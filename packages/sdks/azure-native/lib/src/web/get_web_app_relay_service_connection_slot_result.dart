// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppRelayServiceConnectionSlot.
class GetWebAppRelayServiceConnectionSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String? biztalkUri;
  final String? entityConnectionString;
  final String? entityName;
  final String? hostname;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  final int? port;
  final String? resourceConnectionString;
  final String? resourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebAppRelayServiceConnectionSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [biztalkUri] Optional.
  /// [entityConnectionString] Optional.
  /// [entityName] Optional.
  /// [hostname] Optional.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [port] Optional.
  /// [resourceConnectionString] Optional.
  /// [resourceType] Optional.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppRelayServiceConnectionSlotResult({
    required this.azureApiVersion,
    this.biztalkUri,
    this.entityConnectionString,
    this.entityName,
    this.hostname,
    required this.id,
    this.kind,
    required this.name,
    this.port,
    this.resourceConnectionString,
    this.resourceType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'biztalkUri': ?biztalkUri,
      'entityConnectionString': ?entityConnectionString,
      'entityName': ?entityName,
      'hostname': ?hostname,
      'id': id,
      'kind': ?kind,
      'name': name,
      'port': ?port,
      'resourceConnectionString': ?resourceConnectionString,
      'resourceType': ?resourceType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWebAppRelayServiceConnectionSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppRelayServiceConnectionSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      biztalkUri: (() { final guardedValue = map['biztalkUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityConnectionString: (() { final guardedValue = map['entityConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entityName: (() { final guardedValue = map['entityName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return guardedValue as int; })(),
      resourceConnectionString: (() { final guardedValue = map['resourceConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
