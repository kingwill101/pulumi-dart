// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_monitor_destination_response.dart';
import 'connection_monitor_endpoint_response.dart';
import 'connection_monitor_output_response.dart';
import 'connection_monitor_source_response.dart';
import 'connection_monitor_test_configuration_response.dart';
import 'connection_monitor_test_group_response.dart';

/// Result data returned by getConnectionMonitor.
class GetConnectionMonitorResult {
  /// Determines if the connection monitor will start automatically once created.
  final bool? autoStart;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Type of connection monitor.
  final String connectionMonitorType;
  /// Describes the destination of connection monitor.
  final ConnectionMonitorDestinationResponse? destination;
  /// List of connection monitor endpoints.
  final List<ConnectionMonitorEndpointResponse>? endpoints;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// ID of the connection monitor.
  final String id;
  /// Connection monitor location.
  final String? location;
  /// Monitoring interval in seconds.
  final int? monitoringIntervalInSeconds;
  /// The monitoring status of the connection monitor.
  final String monitoringStatus;
  /// Name of the connection monitor.
  final String name;
  /// Optional notes to be associated with the connection monitor.
  final String? notes;
  /// List of connection monitor outputs.
  final List<ConnectionMonitorOutputResponse>? outputs;
  /// The provisioning state of the connection monitor.
  final String provisioningState;
  /// Describes the source of connection monitor.
  final ConnectionMonitorSourceResponse? source;
  /// The date and time when the connection monitor was started.
  final String startTime;
  /// Connection monitor tags.
  final Map<String, String>? tags;
  /// List of connection monitor test configurations.
  final List<ConnectionMonitorTestConfigurationResponse>? testConfigurations;
  /// List of connection monitor test groups.
  final List<ConnectionMonitorTestGroupResponse>? testGroups;
  /// Connection monitor type.
  final String type;

  /// Creates a new [GetConnectionMonitorResult].
  /// [autoStart] Determines if the connection monitor will start automatically once created.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionMonitorType] Type of connection monitor.
  /// [destination] Describes the destination of connection monitor.
  /// [endpoints] List of connection monitor endpoints.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] ID of the connection monitor.
  /// [location] Connection monitor location.
  /// [monitoringIntervalInSeconds] Monitoring interval in seconds.
  /// [monitoringStatus] The monitoring status of the connection monitor.
  /// [name] Name of the connection monitor.
  /// [notes] Optional notes to be associated with the connection monitor.
  /// [outputs] List of connection monitor outputs.
  /// [provisioningState] The provisioning state of the connection monitor.
  /// [source] Describes the source of connection monitor.
  /// [startTime] The date and time when the connection monitor was started.
  /// [tags] Connection monitor tags.
  /// [testConfigurations] List of connection monitor test configurations.
  /// [testGroups] List of connection monitor test groups.
  /// [type] Connection monitor type.
  GetConnectionMonitorResult({
    this.autoStart,
    required this.azureApiVersion,
    required this.connectionMonitorType,
    this.destination,
    this.endpoints,
    required this.etag,
    required this.id,
    this.location,
    this.monitoringIntervalInSeconds,
    required this.monitoringStatus,
    required this.name,
    this.notes,
    this.outputs,
    required this.provisioningState,
    this.source,
    required this.startTime,
    this.tags,
    this.testConfigurations,
    this.testGroups,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStart': ?autoStart,
      'azureApiVersion': azureApiVersion,
      'connectionMonitorType': connectionMonitorType,
      'destination': ?destination == null ? null : destination!.toMap(),
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<ConnectionMonitorEndpointResponse, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
      'etag': etag,
      'id': id,
      'location': ?location,
      'monitoringIntervalInSeconds': ?monitoringIntervalInSeconds,
      'monitoringStatus': monitoringStatus,
      'name': name,
      'notes': ?notes,
      'outputs': ?outputs == null ? null : pulumi.Input.encodeList<ConnectionMonitorOutputResponse, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'source': ?source == null ? null : source!.toMap(),
      'startTime': startTime,
      'tags': ?tags,
      'testConfigurations': ?testConfigurations == null ? null : pulumi.Input.encodeList<ConnectionMonitorTestConfigurationResponse, Map<String, dynamic>>(testConfigurations!, (value) => value.toMap()),
      'testGroups': ?testGroups == null ? null : pulumi.Input.encodeList<ConnectionMonitorTestGroupResponse, Map<String, dynamic>>(testGroups!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetConnectionMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionMonitorResult(
      autoStart: map['autoStart'] == null ? null : map['autoStart']! as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      connectionMonitorType: map['connectionMonitorType'] as String,
      destination: map['destination'] == null ? null : ConnectionMonitorDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>()),
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorEndpointResponse>(map['endpoints']!, (value) => ConnectionMonitorEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      monitoringIntervalInSeconds: map['monitoringIntervalInSeconds'] == null ? null : map['monitoringIntervalInSeconds']! as int,
      monitoringStatus: map['monitoringStatus'] as String,
      name: map['name'] as String,
      notes: map['notes'] == null ? null : map['notes']! as String,
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorOutputResponse>(map['outputs']!, (value) => ConnectionMonitorOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      source: map['source'] == null ? null : ConnectionMonitorSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      testConfigurations: map['testConfigurations'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorTestConfigurationResponse>(map['testConfigurations']!, (value) => ConnectionMonitorTestConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      testGroups: map['testGroups'] == null ? null : pulumi.Input.decodeList<ConnectionMonitorTestGroupResponse>(map['testGroups']!, (value) => ConnectionMonitorTestGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

