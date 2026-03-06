// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEventHubDataConnection.
class GetEventHubDataConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The event hub messages compression type
  final String? compression;
  /// The event hub consumer group.
  final String consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  final String? dataFormat;
  /// The resource ID of the event hub to be used to create a data connection.
  final String eventHubResourceId;
  /// System properties of the event hub
  final List<String>? eventSystemProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventHub'.
  final String kind;
  /// Resource location.
  final String? location;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  final String? managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final String? mappingRuleName;
  /// The name of the resource
  final String name;
  /// The provisioned state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEventHubDataConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [compression] The event hub messages compression type
  /// [consumerGroup] The event hub consumer group.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [eventHubResourceId] The resource ID of the event hub to be used to create a data connection.
  /// [eventSystemProperties] System properties of the event hub
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [managedIdentityResourceId] The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetEventHubDataConnectionResult({
    required this.azureApiVersion,
    this.compression,
    required this.consumerGroup,
    this.dataFormat,
    required this.eventHubResourceId,
    this.eventSystemProperties,
    required this.id,
    required this.kind,
    this.location,
    this.managedIdentityResourceId,
    this.mappingRuleName,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'compression': ?compression,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'eventHubResourceId': eventHubResourceId,
      'eventSystemProperties': ?eventSystemProperties,
      'id': id,
      'kind': kind,
      'location': ?location,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tableName': ?tableName,
      'type': type,
    };
  }

  factory GetEventHubDataConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEventHubDataConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerGroup: map['consumerGroup'] as String,
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubResourceId: map['eventHubResourceId'] as String,
      eventSystemProperties: (() { final guardedValue = map['eventSystemProperties']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedIdentityResourceId: (() { final guardedValue = map['managedIdentityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

