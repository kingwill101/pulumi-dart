// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_config_response.dart';

/// Settings for the cluster's primary instance
class PrimaryInstanceSettingsResponse {
  /// Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  final pulumi.Input<Map<String, String>> databaseFlags;
  /// Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.
  final pulumi.Input<Map<String, String>> labels;
  /// Configuration for the machines that host the underlying database engine.
  final pulumi.Input<MachineConfigResponse> machineConfig;
  /// The private IP address for the Instance. This is the connection endpoint for an end-user application.
  final pulumi.Input<String> privateIp;

  /// Creates a new [PrimaryInstanceSettingsResponse].
  /// [databaseFlags] Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  /// [labels] Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.
  /// [machineConfig] Configuration for the machines that host the underlying database engine.
  /// [privateIp] The private IP address for the Instance. This is the connection endpoint for an end-user application.
  PrimaryInstanceSettingsResponse({
    required this.databaseFlags,
    required this.labels,
    required this.machineConfig,
    required this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseFlags': databaseFlags,
      'labels': labels,
      'machineConfig': pulumi.Input.mapInputValue<MachineConfigResponse, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'privateIp': privateIp,
    };
  }

  factory PrimaryInstanceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PrimaryInstanceSettingsResponse(
      databaseFlags: ((map['databaseFlags'] as Map).cast<String, String>()).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      machineConfig: (MachineConfigResponse.fromMap((map['machineConfig'] as Map).cast<String, dynamic>())).input(),
      privateIp: (map['privateIp'] as String).input(),
    );
  }
}

