// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_iot_hub_data_connection_args_doc}
/// The set of arguments for IotHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_synapse_iot_hub_data_connection_args_doc}
class IotHubDataConnectionArgs {
  /// The iot hub consumer group.
  final pulumi.Input<String> consumerGroup;
  /// The name of the data connection.
  final pulumi.Input<String>? dataConnectionName;
  /// The data format of the message. Optionally the data format can be added to each message.
  final pulumi.Input<String>? dataFormat;
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// System properties of the iot hub
  final pulumi.Input<List<String>>? eventSystemProperties;
  /// The resource ID of the Iot hub to be used to create a data connection.
  final pulumi.Input<String> iotHubResourceId;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'IotHub'.
  final pulumi.Input<String> kind;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share access policy
  final pulumi.Input<String> sharedAccessPolicyName;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IotHubDataConnectionArgs].
  /// [consumerGroup] The iot hub consumer group.
  /// [dataConnectionName] The name of the data connection.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto pool.
  /// [eventSystemProperties] System properties of the iot hub
  /// [iotHubResourceId] The resource ID of the Iot hub to be used to create a data connection.
  /// [kind] Kind of the endpoint for the data connection
  /// [kustoPoolName] The name of the Kusto pool.
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharedAccessPolicyName] The name of the share access policy
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [workspaceName] The name of the workspace.
  IotHubDataConnectionArgs({
    required this.consumerGroup,
    this.dataConnectionName,
    this.dataFormat,
    required this.databaseName,
    this.eventSystemProperties,
    required this.iotHubResourceId,
    required this.kind,
    required this.kustoPoolName,
    this.location,
    this.mappingRuleName,
    required this.resourceGroupName,
    required this.sharedAccessPolicyName,
    this.tableName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroup': consumerGroup,
      'dataConnectionName': ?dataConnectionName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'eventSystemProperties': ?eventSystemProperties,
      'iotHubResourceId': iotHubResourceId,
      'kind': kind,
      'kustoPoolName': kustoPoolName,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'sharedAccessPolicyName': sharedAccessPolicyName,
      'tableName': ?tableName,
      'workspaceName': workspaceName,
    };
  }

  factory IotHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDataConnectionArgs(
      consumerGroup: (map['consumerGroup'] as String).input(),
      dataConnectionName: map['dataConnectionName'] == null ? null : (map['dataConnectionName'] as String).input(),
      dataFormat: map['dataFormat'] == null ? null : (map['dataFormat'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      eventSystemProperties: map['eventSystemProperties'] == null ? null : ((map['eventSystemProperties'] as List).cast<String>()).input(),
      iotHubResourceId: (map['iotHubResourceId'] as String).input(),
      kind: (map['kind'] as String).input(),
      kustoPoolName: (map['kustoPoolName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mappingRuleName: map['mappingRuleName'] == null ? null : (map['mappingRuleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sharedAccessPolicyName: (map['sharedAccessPolicyName'] as String).input(),
      tableName: map['tableName'] == null ? null : (map['tableName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

