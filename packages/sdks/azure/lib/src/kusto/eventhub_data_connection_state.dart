// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventhubDataConnection resources.
class EventhubDataConnectionState {
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterName;
  /// Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? compression;
  /// Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String>? consumerGroup;
  /// Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`.
  final pulumi.Input<String>? dataFormat;
  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  final pulumi.Input<String>? databaseRoutingType;
  /// Specifies a list of system properties for the Event Hub.
  final pulumi.Input<List<String>>? eventSystemProperties;
  /// Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubId;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  final pulumi.Input<String>? identityId;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the date after which data should be retrieved from Event Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the Event Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  final pulumi.Input<String>? retrievalStartDate;
  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  final pulumi.Input<String>? tableName;

  /// Creates a new [EventhubDataConnectionState].
  /// [clusterName] Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  /// [compression] Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created.
  /// [consumerGroup] Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [dataFormat] Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`.
  /// [databaseName] Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  /// [databaseRoutingType] Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  /// [eventSystemProperties] Specifies a list of system properties for the Event Hub.
  /// [eventhubId] Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [identityId] The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [mappingRuleName] Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  /// [name] The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [retrievalStartDate] Specifies the date after which data should be retrieved from Event Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the Event Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  /// [tableName] Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  EventhubDataConnectionState({
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? compression,
    pulumi.Output<String>? consumerGroup,
    pulumi.Output<String>? dataFormat,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? databaseRoutingType,
    pulumi.Output<List<String>>? eventSystemProperties,
    pulumi.Output<String>? eventhubId,
    pulumi.Output<String>? identityId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mappingRuleName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? retrievalStartDate,
    pulumi.Output<String>? tableName,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      compression = pulumi.Input.asOptionalInput<String>(compression),
      consumerGroup = pulumi.Input.asOptionalInput<String>(consumerGroup),
      dataFormat = pulumi.Input.asOptionalInput<String>(dataFormat),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      databaseRoutingType = pulumi.Input.asOptionalInput<String>(databaseRoutingType),
      eventSystemProperties = pulumi.Input.asOptionalInput<List<String>>(eventSystemProperties),
      eventhubId = pulumi.Input.asOptionalInput<String>(eventhubId),
      identityId = pulumi.Input.asOptionalInput<String>(identityId),
      location = pulumi.Input.asOptionalInput<String>(location),
      mappingRuleName = pulumi.Input.asOptionalInput<String>(mappingRuleName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retrievalStartDate = pulumi.Input.asOptionalInput<String>(retrievalStartDate),
      tableName = pulumi.Input.asOptionalInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'compression': ?compression,
      'consumerGroup': ?consumerGroup,
      'dataFormat': ?dataFormat,
      'databaseName': ?databaseName,
      'databaseRoutingType': ?databaseRoutingType,
      'eventSystemProperties': ?eventSystemProperties,
      'eventhubId': ?eventhubId,
      'identityId': ?identityId,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'retrievalStartDate': ?retrievalStartDate,
      'tableName': ?tableName,
    };
  }

  factory EventhubDataConnectionState.fromMap(Map<String, dynamic> map) {
    return EventhubDataConnectionState(
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      compression: map['compression'] == null ? null : pulumi.Output.create<String>(map['compression'] as String),
      consumerGroup: map['consumerGroup'] == null ? null : pulumi.Output.create<String>(map['consumerGroup'] as String),
      dataFormat: map['dataFormat'] == null ? null : pulumi.Output.create<String>(map['dataFormat'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      databaseRoutingType: map['databaseRoutingType'] == null ? null : pulumi.Output.create<String>(map['databaseRoutingType'] as String),
      eventSystemProperties: map['eventSystemProperties'] == null ? null : pulumi.Output.create<List<String>>((map['eventSystemProperties'] as List).cast<String>()),
      eventhubId: map['eventhubId'] == null ? null : pulumi.Output.create<String>(map['eventhubId'] as String),
      identityId: map['identityId'] == null ? null : pulumi.Output.create<String>(map['identityId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mappingRuleName: map['mappingRuleName'] == null ? null : pulumi.Output.create<String>(map['mappingRuleName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retrievalStartDate: map['retrievalStartDate'] == null ? null : pulumi.Output.create<String>(map['retrievalStartDate'] as String),
      tableName: map['tableName'] == null ? null : pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

