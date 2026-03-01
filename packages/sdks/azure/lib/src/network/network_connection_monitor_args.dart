// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_endpoint.dart';
import 'network_connection_monitor_test_configuration.dart';
import 'network_connection_monitor_test_group.dart';

/// {@template pulumi_network_network_connection_monitor_network_connection_monitor_args_doc}
/// The set of arguments for NetworkConnectionMonitor.
/// {@endtemplate}
/// {@macro pulumi_network_network_connection_monitor_network_connection_monitor_args_doc}
class NetworkConnectionMonitorArgs {
  /// A `endpoint` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorEndpoint>> endpoints;
  /// The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkWatcherId;
  /// The description of the Network Connection Monitor.
  final pulumi.Input<String>? notes;
  /// A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor.
  final pulumi.Input<List<String>>? outputWorkspaceResourceIds;
  /// A mapping of tags which should be assigned to the Network Connection Monitor.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `test_configuration` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorTestConfiguration>> testConfigurations;
  /// A `test_group` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorTestGroup>> testGroups;

  /// Creates a new [NetworkConnectionMonitorArgs].
  /// [endpoints] A `endpoint` block as defined below.
  /// [location] The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created.
  /// [networkWatcherId] The ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [notes] The description of the Network Connection Monitor.
  /// [outputWorkspaceResourceIds] A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor.
  /// [tags] A mapping of tags which should be assigned to the Network Connection Monitor.
  /// [testConfigurations] A `test_configuration` block as defined below.
  /// [testGroups] A `test_group` block as defined below.
  NetworkConnectionMonitorArgs({
    required pulumi.Output<List<NetworkConnectionMonitorEndpoint>> endpoints,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkWatcherId,
    pulumi.Output<String>? notes,
    pulumi.Output<List<String>>? outputWorkspaceResourceIds,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<List<NetworkConnectionMonitorTestConfiguration>> testConfigurations,
    required pulumi.Output<List<NetworkConnectionMonitorTestGroup>> testGroups,
  }) :
      endpoints = pulumi.Input.asInput<List<NetworkConnectionMonitorEndpoint>>(endpoints),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkWatcherId = pulumi.Input.asInput<String>(networkWatcherId),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      outputWorkspaceResourceIds = pulumi.Input.asOptionalInput<List<String>>(outputWorkspaceResourceIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      testConfigurations = pulumi.Input.asInput<List<NetworkConnectionMonitorTestConfiguration>>(testConfigurations),
      testGroups = pulumi.Input.asInput<List<NetworkConnectionMonitorTestGroup>>(testGroups);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': pulumi.Input.mapInputValue<List<NetworkConnectionMonitorEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<NetworkConnectionMonitorEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'networkWatcherId': networkWatcherId,
      'notes': ?notes,
      'outputWorkspaceResourceIds': ?outputWorkspaceResourceIds,
      'tags': ?tags,
      'testConfigurations': pulumi.Input.mapInputValue<List<NetworkConnectionMonitorTestConfiguration>, List<Map<String, dynamic>>>(testConfigurations, (value) => pulumi.Input.encodeList<NetworkConnectionMonitorTestConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testGroups': pulumi.Input.mapInputValue<List<NetworkConnectionMonitorTestGroup>, List<Map<String, dynamic>>>(testGroups, (value) => pulumi.Input.encodeList<NetworkConnectionMonitorTestGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkConnectionMonitorArgs.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorArgs(
      endpoints: pulumi.Output.create<List<NetworkConnectionMonitorEndpoint>>(pulumi.Input.decodeList<NetworkConnectionMonitorEndpoint>(map['endpoints'], (value) => NetworkConnectionMonitorEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkWatcherId: pulumi.Output.create<String>(map['networkWatcherId'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      outputWorkspaceResourceIds: map['outputWorkspaceResourceIds'] == null ? null : pulumi.Output.create<List<String>>((map['outputWorkspaceResourceIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      testConfigurations: pulumi.Output.create<List<NetworkConnectionMonitorTestConfiguration>>(pulumi.Input.decodeList<NetworkConnectionMonitorTestConfiguration>(map['testConfigurations'], (value) => NetworkConnectionMonitorTestConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      testGroups: pulumi.Output.create<List<NetworkConnectionMonitorTestGroup>>(pulumi.Input.decodeList<NetworkConnectionMonitorTestGroup>(map['testGroups'], (value) => NetworkConnectionMonitorTestGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

