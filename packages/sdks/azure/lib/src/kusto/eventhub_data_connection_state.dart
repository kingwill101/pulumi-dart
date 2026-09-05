// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventhubDataConnection resources.
class EventhubDataConnectionState {
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? clusterName;
  /// Specifies compression type for the connection. Allowed values: `GZip` and `None`. Defaults to `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? compression;
  /// Specifies the EventHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? consumerGroup;
  /// Specifies the data format of the EventHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSVE`, `TSV`, `TXT`, and `W3CLOGFILE`.
  final pulumi.Input<String?>? dataFormat;
  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? databaseName;
  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  final pulumi.Input<String?>? databaseRoutingType;
  /// Specifies a list of system properties for the Event Hub.
  final pulumi.Input<List<String>?>? eventSystemProperties;
  /// Specifies the resource id of the EventHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? eventhubId;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  final pulumi.Input<String?>? identityId;
  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created.
  final pulumi.Input<String?>? mappingRuleName;
  /// The name of the Kusto EventHub Data Connection to create. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Specifies the date after which data should be retrieved from Event Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the Event Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  final pulumi.Input<String?>? retrievalStartDate;
  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created.
  final pulumi.Input<String?>? tableName;

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
  const EventhubDataConnectionState({
    this.clusterName,
    this.compression,
    this.consumerGroup,
    this.dataFormat,
    this.databaseName,
    this.databaseRoutingType,
    this.eventSystemProperties,
    this.eventhubId,
    this.identityId,
    this.location,
    this.mappingRuleName,
    this.name,
    this.resourceGroupName,
    this.retrievalStartDate,
    this.tableName,
  });

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
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseRoutingType: (() { final guardedValue = map['databaseRoutingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventSystemProperties: (() { final guardedValue = map['eventSystemProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eventhubId: (() { final guardedValue = map['eventhubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityId: (() { final guardedValue = map['identityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retrievalStartDate: (() { final guardedValue = map['retrievalStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
