// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_event_grid_data_connection_args_doc}
/// The set of arguments for EventGridDataConnection.
/// {@endtemplate}
/// {@macro pulumi_synapse_event_grid_data_connection_args_doc}
class EventGridDataConnectionArgs {
  /// The name of blob storage event type to process.
  final pulumi.Input<String>? blobStorageEventType;
  /// The event hub consumer group.
  final pulumi.Input<String> consumerGroup;
  /// The name of the data connection.
  final pulumi.Input<String>? dataConnectionName;
  /// The data format of the message. Optionally the data format can be added to each message.
  final pulumi.Input<String>? dataFormat;
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// The resource ID where the event grid is configured to send events.
  final pulumi.Input<String> eventHubResourceId;
  /// A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  final pulumi.Input<bool>? ignoreFirstRecord;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventGrid'.
  final pulumi.Input<String> kind;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource ID of the storage account where the data resides.
  final pulumi.Input<String> storageAccountResourceId;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EventGridDataConnectionArgs].
  /// [blobStorageEventType] The name of blob storage event type to process.
  /// [consumerGroup] The event hub consumer group.
  /// [dataConnectionName] The name of the data connection.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto pool.
  /// [eventHubResourceId] The resource ID where the event grid is configured to send events.
  /// [ignoreFirstRecord] A Boolean value that, if set to true, indicates that ingestion should ignore the first record of every file
  /// [kind] Kind of the endpoint for the data connection
  /// [kustoPoolName] The name of the Kusto pool.
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccountResourceId] The resource ID of the storage account where the data resides.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [workspaceName] The name of the workspace.
  EventGridDataConnectionArgs({
    pulumi.Output<String>? blobStorageEventType,
    required pulumi.Output<String> consumerGroup,
    pulumi.Output<String>? dataConnectionName,
    pulumi.Output<String>? dataFormat,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> eventHubResourceId,
    pulumi.Output<bool>? ignoreFirstRecord,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> kustoPoolName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mappingRuleName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageAccountResourceId,
    pulumi.Output<String>? tableName,
    required pulumi.Output<String> workspaceName,
  }) :
      blobStorageEventType = pulumi.Input.asOptionalInput<String>(blobStorageEventType),
      consumerGroup = pulumi.Input.asInput<String>(consumerGroup),
      dataConnectionName = pulumi.Input.asOptionalInput<String>(dataConnectionName),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      eventHubResourceId = pulumi.Input.asInput<String>(eventHubResourceId),
      ignoreFirstRecord = pulumi.Input.asOptionalInput<bool>(ignoreFirstRecord),
      kind = pulumi.Input.asInput<String>(kind),
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      location = pulumi.Input.asOptionalInput<String>(location),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccountResourceId = pulumi.Input.asInput<String>(storageAccountResourceId),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobStorageEventType': ?blobStorageEventType,
      'consumerGroup': consumerGroup,
      'dataConnectionName': ?dataConnectionName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'eventHubResourceId': eventHubResourceId,
      'ignoreFirstRecord': ?ignoreFirstRecord,
      'kind': kind,
      'kustoPoolName': kustoPoolName,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'storageAccountResourceId': storageAccountResourceId,
      'tableName': ?tableName,
      'workspaceName': workspaceName,
    };
  }

  factory EventGridDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventGridDataConnectionArgs(
      blobStorageEventType: map['blobStorageEventType'] == null ? null : pulumi.Output.create<String>(map['blobStorageEventType'] as String),
      consumerGroup: pulumi.Output.create<String>(map['consumerGroup'] as String),
      dataConnectionName: map['dataConnectionName'] == null ? null : pulumi.Output.create<String>(map['dataConnectionName'] as String),
      dataFormat: map['dataFormat'] == null ? null : pulumi.Output.create<String>(map['dataFormat'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      eventHubResourceId: pulumi.Output.create<String>(map['eventHubResourceId'] as String),
      ignoreFirstRecord: map['ignoreFirstRecord'] == null ? null : pulumi.Output.create<bool>(map['ignoreFirstRecord'] as bool),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      kustoPoolName: pulumi.Output.create<String>(map['kustoPoolName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountResourceId: pulumi.Output.create<String>(map['storageAccountResourceId'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

