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
  final String? azureApiVersion;
  /// Type of connection monitor.
  final String? connectionMonitorType;
  /// Describes the destination of connection monitor.
  final ConnectionMonitorDestinationResponse? destination;
  /// List of connection monitor endpoints.
  final List<ConnectionMonitorEndpointResponse>? endpoints;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// ID of the connection monitor.
  final String? id;
  /// Connection monitor location.
  final String? location;
  /// Monitoring interval in seconds.
  final int? monitoringIntervalInSeconds;
  /// The monitoring status of the connection monitor.
  final String? monitoringStatus;
  /// Name of the connection monitor.
  final String? name;
  /// Optional notes to be associated with the connection monitor.
  final String? notes;
  /// List of connection monitor outputs.
  final List<ConnectionMonitorOutputResponse>? outputs;
  /// The provisioning state of the connection monitor.
  final String? provisioningState;
  /// Describes the source of connection monitor.
  final ConnectionMonitorSourceResponse? source;
  /// The date and time when the connection monitor was started.
  final String? startTime;
  /// Connection monitor tags.
  final Map<String, String>? tags;
  /// List of connection monitor test configurations.
  final List<ConnectionMonitorTestConfigurationResponse>? testConfigurations;
  /// List of connection monitor test groups.
  final List<ConnectionMonitorTestGroupResponse>? testGroups;
  /// Connection monitor type.
  final String? type;

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
    bool? autoStart,
    this.azureApiVersion,
    this.connectionMonitorType,
    this.destination,
    this.endpoints,
    this.etag,
    this.id,
    this.location,
    int? monitoringIntervalInSeconds,
    this.monitoringStatus,
    this.name,
    this.notes,
    this.outputs,
    this.provisioningState,
    this.source,
    this.startTime,
    this.tags,
    this.testConfigurations,
    this.testGroups,
    this.type,
  }) : autoStart = autoStart ?? true, monitoringIntervalInSeconds = monitoringIntervalInSeconds ?? 60;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStart': ?autoStart,
      'azureApiVersion': ?azureApiVersion,
      'connectionMonitorType': ?connectionMonitorType,
      'destination': ?destination?.toMap(),
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectionMonitorEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'monitoringIntervalInSeconds': ?monitoringIntervalInSeconds,
      'monitoringStatus': ?monitoringStatus,
      'name': ?name,
      'notes': ?notes,
      'outputs': ?(() { final guardedValue = outputs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectionMonitorOutputResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'source': ?source?.toMap(),
      'startTime': ?startTime,
      'tags': ?tags,
      'testConfigurations': ?(() { final guardedValue = testConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectionMonitorTestConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'testGroups': ?(() { final guardedValue = testGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<ConnectionMonitorTestGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetConnectionMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionMonitorResult(
      autoStart: (() { final guardedValue = map['autoStart']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionMonitorType: (() { final guardedValue = map['connectionMonitorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return ConnectionMonitorDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectionMonitorEndpointResponse>(guardedValue, (value) => ConnectionMonitorEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringIntervalInSeconds: (() { final guardedValue = map['monitoringIntervalInSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      monitoringStatus: (() { final guardedValue = map['monitoringStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectionMonitorOutputResponse>(guardedValue, (value) => ConnectionMonitorOutputResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return ConnectionMonitorSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      testConfigurations: (() { final guardedValue = map['testConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectionMonitorTestConfigurationResponse>(guardedValue, (value) => ConnectionMonitorTestConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      testGroups: (() { final guardedValue = map['testGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectionMonitorTestGroupResponse>(guardedValue, (value) => ConnectionMonitorTestGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
