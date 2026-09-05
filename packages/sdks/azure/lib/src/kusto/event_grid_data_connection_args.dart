// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_event_grid_data_connection_event_grid_data_connection_args_doc}
/// The set of arguments for EventGridDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_event_grid_data_connection_event_grid_data_connection_args_doc}
class EventGridDataConnectionArgs {
  /// Specifies the blob storage event type that needs to be processed. Possible Values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobRenamed`. Defaults to `Microsoft.Storage.BlobCreated`.
  final pulumi.Input<String?>? blobStorageEventType;
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;
  /// Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`.
  final pulumi.Input<String?>? dataFormat;
  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  final pulumi.Input<String?>? databaseRoutingType;
  /// The resource ID of the event grid that is subscribed to the storage account events.
  final pulumi.Input<String?>? eventgridEventSubscriptionId;
  final pulumi.Input<String?>? eventgridResourceId;
  /// Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubConsumerGroupName;
  /// Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubId;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id.
  final pulumi.Input<String?>? managedIdentityId;
  final pulumi.Input<String?>? managedIdentityResourceId;
  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  final pulumi.Input<String?>? mappingRuleName;
  /// The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// is the first record of every file ignored? Defaults to `false`.
  final pulumi.Input<bool?>? skipFirstRecord;
  /// Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;
  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  final pulumi.Input<String?>? tableName;

  /// Creates a new [EventGridDataConnectionArgs].
  /// [blobStorageEventType] Specifies the blob storage event type that needs to be processed. Possible Values are `Microsoft.Storage.BlobCreated` and `Microsoft.Storage.BlobRenamed`. Defaults to `Microsoft.Storage.BlobCreated`.
  /// [clusterName] Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  /// [dataFormat] Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`.
  /// [databaseName] Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  /// [databaseRoutingType] Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  /// [eventgridEventSubscriptionId] The resource ID of the event grid that is subscribed to the storage account events.
  /// [eventgridResourceId] Optional.
  /// [eventhubConsumerGroupName] Specifies the Event Hub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [eventhubId] Specifies the resource id of the Event Hub this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [managedIdentityId] Empty for non-managed identity based data connection. For system assigned identity, provide cluster resource Id. For user assigned identity (UAI) provide the UAI resource Id.
  /// [managedIdentityResourceId] Optional.
  /// [mappingRuleName] Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  /// [name] The name of the Kusto Event Grid Data Connection to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [skipFirstRecord] is the first record of every file ignored? Defaults to `false`.
  /// [storageAccountId] Specifies the resource id of the Storage Account this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [tableName] Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  const EventGridDataConnectionArgs({
    this.blobStorageEventType,
    required this.clusterName,
    this.dataFormat,
    required this.databaseName,
    this.databaseRoutingType,
    this.eventgridEventSubscriptionId,
    this.eventgridResourceId,
    required this.eventhubConsumerGroupName,
    required this.eventhubId,
    this.location,
    this.managedIdentityId,
    this.managedIdentityResourceId,
    this.mappingRuleName,
    this.name,
    required this.resourceGroupName,
    this.skipFirstRecord,
    required this.storageAccountId,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorageEventType': ?blobStorageEventType,
      'clusterName': clusterName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'databaseRoutingType': ?databaseRoutingType,
      'eventgridEventSubscriptionId': ?eventgridEventSubscriptionId,
      'eventgridResourceId': ?eventgridResourceId,
      'eventhubConsumerGroupName': eventhubConsumerGroupName,
      'eventhubId': eventhubId,
      'location': ?location,
      'managedIdentityId': ?managedIdentityId,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skipFirstRecord': ?skipFirstRecord,
      'storageAccountId': storageAccountId,
      'tableName': ?tableName,
    };
  }

  factory EventGridDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventGridDataConnectionArgs(
      blobStorageEventType: (() { final guardedValue = map['blobStorageEventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      databaseRoutingType: (() { final guardedValue = map['databaseRoutingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventgridEventSubscriptionId: (() { final guardedValue = map['eventgridEventSubscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventgridResourceId: (() { final guardedValue = map['eventgridResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubConsumerGroupName: pulumi.Input.fromValue(map['eventhubConsumerGroupName'] as String),
      eventhubId: pulumi.Input.fromValue(map['eventhubId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityId: (() { final guardedValue = map['managedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityResourceId: (() { final guardedValue = map['managedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skipFirstRecord: (() { final guardedValue = map['skipFirstRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
