// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_iot_hub_data_connection_iot_hub_data_connection_args_doc}
/// The set of arguments for IotHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_iot_hub_data_connection_iot_hub_data_connection_args_doc}
class IotHubDataConnectionArgs {
  /// Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterName;

  /// Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> consumerGroup;

  /// Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataFormat;

  /// Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;

  /// Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  final pulumi.Input<String>? databaseRoutingType;

  /// Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? eventSystemProperties;

  /// Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;

  /// The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mappingRuleName;

  /// The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Specifies the date after which data should be retrieved from IoT Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the IoT Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  final pulumi.Input<String>? retrievalStartDate;

  /// Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created.
  final pulumi.Input<String> sharedAccessPolicyName;

  /// Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tableName;

  /// Creates a new [IotHubDataConnectionArgs].
  /// [clusterName] Specifies the name of the Kusto Cluster this data connection will be added to. Changing this forces a new resource to be created.
  /// [consumerGroup] Specifies the IotHub consumer group this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [dataFormat] Specifies the data format of the IoTHub messages. Allowed values: `APACHEAVRO`, `AVRO`, `CSV`, `JSON`, `MULTIJSON`, `ORC`, `PARQUET`, `PSV`, `RAW`, `SCSV`, `SINGLEJSON`, `SOHSV`, `TSV`, `TSVE`, `TXT` and `W3CLOGFILE`. Changing this forces a new resource to be created.
  /// [databaseName] Specifies the name of the Kusto Database this data connection will be added to. Changing this forces a new resource to be created.
  /// [databaseRoutingType] Indication for database routing information from the data connection, by default only database routing information is allowed. Allowed values: `Single`, `Multi`. Changing this forces a new resource to be created. Defaults to `Single`.
  /// [eventSystemProperties] Specifies the System Properties that each IoT Hub message should contain. Changing this forces a new resource to be created.
  /// [iothubId] Specifies the resource id of the IotHub this data connection will use for ingestion. Changing this forces a new resource to be created.
  /// [location] The location where the Kusto Database should be created. Changing this forces a new resource to be created.
  /// [mappingRuleName] Specifies the mapping rule used for the message ingestion. Mapping rule must exist before resource is created. Changing this forces a new resource to be created.
  /// [name] The name of the Kusto IotHub Data Connection to create. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the Resource Group where the Kusto Database should exist. Changing this forces a new resource to be created.
  /// [retrievalStartDate] Specifies the date after which data should be retrieved from IoT Hub. When defined, the data connection retrieves existing events created since the specified retrieval start date. It can only retrieve events retained by the IoT Hub, based on its retention period. The value should be in RFC3339 format (e.g., `2023-06-26T12:00:00Z`).
  /// [sharedAccessPolicyName] Specifies the IotHub Shared Access Policy this data connection will use for ingestion, which must have read permission. Changing this forces a new resource to be created.
  /// [tableName] Specifies the target table name used for the message ingestion. Table must exist before resource is created. Changing this forces a new resource to be created.
  IotHubDataConnectionArgs({
    required this.clusterName,
    required this.consumerGroup,
    this.dataFormat,
    required this.databaseName,
    this.databaseRoutingType,
    this.eventSystemProperties,
    required this.iothubId,
    this.location,
    this.mappingRuleName,
    this.name,
    required this.resourceGroupName,
    this.retrievalStartDate,
    required this.sharedAccessPolicyName,
    this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'consumerGroup': consumerGroup,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'databaseRoutingType': ?databaseRoutingType,
      'eventSystemProperties': ?eventSystemProperties,
      'iothubId': iothubId,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retrievalStartDate': ?retrievalStartDate,
      'sharedAccessPolicyName': sharedAccessPolicyName,
      'tableName': ?tableName,
    };
  }

  factory IotHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDataConnectionArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      consumerGroup: pulumi.Input.fromValue(map['consumerGroup'] as String),
      dataFormat: (() {
        final guardedValue = map['dataFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      databaseRoutingType: (() {
        final guardedValue = map['databaseRoutingType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventSystemProperties: (() {
        final guardedValue = map['eventSystemProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      iothubId: pulumi.Input.fromValue(map['iothubId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mappingRuleName: (() {
        final guardedValue = map['mappingRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      retrievalStartDate: (() {
        final guardedValue = map['retrievalStartDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedAccessPolicyName: pulumi.Input.fromValue(
        map['sharedAccessPolicyName'] as String,
      ),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
