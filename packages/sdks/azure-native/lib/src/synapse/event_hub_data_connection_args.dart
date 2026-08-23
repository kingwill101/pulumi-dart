// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_event_hub_data_connection_args_doc}
/// The set of arguments for EventHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_synapse_event_hub_data_connection_args_doc}
class EventHubDataConnectionArgs {
  /// The event hub messages compression type
  final pulumi.Input<String>? compression;
  /// The event hub consumer group.
  final pulumi.Input<String> consumerGroup;
  /// The name of the data connection.
  final pulumi.Input<String>? dataConnectionName;
  /// The data format of the message. Optionally the data format can be added to each message.
  final pulumi.Input<String>? dataFormat;
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// The resource ID of the event hub to be used to create a data connection.
  final pulumi.Input<String> eventHubResourceId;
  /// System properties of the event hub
  final pulumi.Input<List<String>>? eventSystemProperties;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'EventHub'.
  final pulumi.Input<String> kind;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  final pulumi.Input<String>? managedIdentityResourceId;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final pulumi.Input<String>? mappingRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final pulumi.Input<String>? tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EventHubDataConnectionArgs].
  /// [compression] The event hub messages compression type
  /// [consumerGroup] The event hub consumer group.
  /// [dataConnectionName] The name of the data connection.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [databaseName] The name of the database in the Kusto pool.
  /// [eventHubResourceId] The resource ID of the event hub to be used to create a data connection.
  /// [eventSystemProperties] System properties of the event hub
  /// [kind] Kind of the endpoint for the data connection
  /// [kustoPoolName] The name of the Kusto pool.
  /// [location] Resource location.
  /// [managedIdentityResourceId] The resource ID of a managed identity (system or user assigned) to be used to authenticate with event hub.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [workspaceName] The name of the workspace.
  const EventHubDataConnectionArgs({
    this.compression,
    required this.consumerGroup,
    this.dataConnectionName,
    this.dataFormat,
    required this.databaseName,
    required this.eventHubResourceId,
    this.eventSystemProperties,
    required this.kind,
    required this.kustoPoolName,
    this.location,
    this.managedIdentityResourceId,
    this.mappingRuleName,
    required this.resourceGroupName,
    this.tableName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': ?compression,
      'consumerGroup': consumerGroup,
      'dataConnectionName': ?dataConnectionName,
      'dataFormat': ?dataFormat,
      'databaseName': databaseName,
      'eventHubResourceId': eventHubResourceId,
      'eventSystemProperties': ?eventSystemProperties,
      'kind': kind,
      'kustoPoolName': kustoPoolName,
      'location': ?location,
      'managedIdentityResourceId': ?managedIdentityResourceId,
      'mappingRuleName': ?mappingRuleName,
      'resourceGroupName': resourceGroupName,
      'tableName': ?tableName,
      'workspaceName': workspaceName,
    };
  }

  factory EventHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return EventHubDataConnectionArgs(
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerGroup: pulumi.Input.fromValue(map['consumerGroup'] as String),
      dataConnectionName: (() { final guardedValue = map['dataConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      eventHubResourceId: pulumi.Input.fromValue(map['eventHubResourceId'] as String),
      eventSystemProperties: (() { final guardedValue = map['eventSystemProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kustoPoolName: pulumi.Input.fromValue(map['kustoPoolName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityResourceId: (() { final guardedValue = map['managedIdentityResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
