// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_endpoint.dart';
import 'network_connection_monitor_test_configuration.dart';
import 'network_connection_monitor_test_group.dart';

/// Input properties used for looking up and filtering NetworkConnectionMonitor resources.
class NetworkConnectionMonitorState {
  /// A `endpoint` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorEndpoint>>? endpoints;

  /// The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String>? networkWatcherId;

  /// The description of the Network Connection Monitor.
  final pulumi.Input<String>? notes;

  /// A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor.
  final pulumi.Input<List<String>>? outputWorkspaceResourceIds;

  /// A mapping of tags which should be assigned to the Network Connection Monitor.
  final pulumi.Input<Map<String, String>>? tags;

  /// A `test_configuration` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorTestConfiguration>>?
  testConfigurations;

  /// A `test_group` block as defined below.
  final pulumi.Input<List<NetworkConnectionMonitorTestGroup>>? testGroups;

  /// Creates a new [NetworkConnectionMonitorState].
  /// [endpoints] A `endpoint` block as defined below.
  /// [location] The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created.
  /// [networkWatcherId] The ID of the Network Watcher. Changing this forces a new resource to be created.
  /// [notes] The description of the Network Connection Monitor.
  /// [outputWorkspaceResourceIds] A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor.
  /// [tags] A mapping of tags which should be assigned to the Network Connection Monitor.
  /// [testConfigurations] A `test_configuration` block as defined below.
  /// [testGroups] A `test_group` block as defined below.
  NetworkConnectionMonitorState({
    this.endpoints,
    this.location,
    this.name,
    this.networkWatcherId,
    this.notes,
    this.outputWorkspaceResourceIds,
    this.tags,
    this.testConfigurations,
    this.testGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkConnectionMonitorEndpoint>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkConnectionMonitorEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'location': ?location,
      'name': ?name,
      'networkWatcherId': ?networkWatcherId,
      'notes': ?notes,
      'outputWorkspaceResourceIds': ?outputWorkspaceResourceIds,
      'tags': ?tags,
      'testConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkConnectionMonitorTestConfiguration>,
            List<Map<String, dynamic>>
          >(
            testConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkConnectionMonitorTestConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'testGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkConnectionMonitorTestGroup>,
            List<Map<String, dynamic>>
          >(
            testGroups,
            (value) =>
                pulumi.Input.encodeList<
                  NetworkConnectionMonitorTestGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkConnectionMonitorState.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorState(
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkConnectionMonitorEndpoint>(
            guardedValue,
            (value) => NetworkConnectionMonitorEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkWatcherId: (() {
        final guardedValue = map['networkWatcherId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notes: (() {
        final guardedValue = map['notes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputWorkspaceResourceIds: (() {
        final guardedValue = map['outputWorkspaceResourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      testConfigurations: (() {
        final guardedValue = map['testConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkConnectionMonitorTestConfiguration>(
            guardedValue,
            (value) => NetworkConnectionMonitorTestConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      testGroups: (() {
        final guardedValue = map['testGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkConnectionMonitorTestGroup>(
            guardedValue,
            (value) => NetworkConnectionMonitorTestGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
