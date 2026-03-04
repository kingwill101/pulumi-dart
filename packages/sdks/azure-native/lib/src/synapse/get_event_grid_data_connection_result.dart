// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getEventGridDataConnection.
class GetEventGridDataConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The name of blob storage event type to process.
  final String? blobStorageEventType;

  /// The event hub consumer group.
  final String consumerGroup;

  /// The data format of the message. Optionally the data format can be added to each message.
  final String? dataFormat;

  /// The resource ID where the event grid is configured to send events.
  final String eventHubResourceId;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  final bool? ignoreFirstRecord;

  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventGrid'.
  final String kind;

  /// Resource location.
  final String? location;

  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final String? mappingRuleName;

  /// The name of the resource
  final String name;

  /// The provisioned state of the resource.
  final String provisioningState;

  /// The resource ID of the storage account where the data resides.
  final String storageAccountResourceId;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final String? tableName;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetEventGridDataConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [blobStorageEventType] The name of blob storage event type to process.
  /// [consumerGroup] The event hub consumer group.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [eventHubResourceId] The resource ID where the event grid is configured to send events.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ignoreFirstRecord] A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [storageAccountResourceId] The resource ID of the storage account where the data resides.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetEventGridDataConnectionResult({
    required this.azureApiVersion,
    this.blobStorageEventType,
    required this.consumerGroup,
    this.dataFormat,
    required this.eventHubResourceId,
    required this.id,
    this.ignoreFirstRecord,
    required this.kind,
    this.location,
    this.mappingRuleName,
    required this.name,
    required this.provisioningState,
    required this.storageAccountResourceId,
    required this.systemData,
    this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'blobStorageEventType': ?blobStorageEventType,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'eventHubResourceId': eventHubResourceId,
      'id': id,
      'ignoreFirstRecord': ?ignoreFirstRecord,
      'kind': kind,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'name': name,
      'provisioningState': provisioningState,
      'storageAccountResourceId': storageAccountResourceId,
      'systemData': systemData.toMap(),
      'tableName': ?tableName,
      'type': type,
    };
  }

  factory GetEventGridDataConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEventGridDataConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      blobStorageEventType: (() {
        final guardedValue = map['blobStorageEventType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      consumerGroup: map['consumerGroup'] as String,
      dataFormat: (() {
        final guardedValue = map['dataFormat'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      eventHubResourceId: map['eventHubResourceId'] as String,
      id: map['id'] as String,
      ignoreFirstRecord: (() {
        final guardedValue = map['ignoreFirstRecord'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      kind: map['kind'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      mappingRuleName: (() {
        final guardedValue = map['mappingRuleName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      storageAccountResourceId: map['storageAccountResourceId'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
