// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_alloydb_settings_primary_instance_settings_machine_config.dart';

class ConnectionProfileAlloydbSettingsPrimaryInstanceSettings {
  /// Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// The database username.
  final pulumi.Input<String> id;
  /// Labels for the AlloyDB primary instance created by DMS.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configuration for the machines that host the underlying database engine.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig> machineConfig;
  /// (Output)
  /// Output only. The private IP address for the Instance. This is the connection endpoint for an end-user application.
  final pulumi.Input<String>? privateIp;

  /// Creates a new [ConnectionProfileAlloydbSettingsPrimaryInstanceSettings].
  /// [databaseFlags] Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  /// [id] The database username.
  /// [labels] Labels for the AlloyDB primary instance created by DMS.
  /// [machineConfig] Configuration for the machines that host the underlying database engine.
  /// [privateIp] (Output)
  ConnectionProfileAlloydbSettingsPrimaryInstanceSettings({
    this.databaseFlags,
    required this.id,
    this.labels,
    required this.machineConfig,
    this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseFlags': ?databaseFlags,
      'id': id,
      'labels': ?labels,
      'machineConfig': pulumi.Input.mapInputValue<ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
      'privateIp': ?privateIp,
    };
  }

  factory ConnectionProfileAlloydbSettingsPrimaryInstanceSettings.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileAlloydbSettingsPrimaryInstanceSettings(
      databaseFlags: map['databaseFlags'] == null ? null : ((map['databaseFlags'] as Map).cast<String, String>()).input(),
      id: (map['id'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      machineConfig: (ConnectionProfileAlloydbSettingsPrimaryInstanceSettingsMachineConfig.fromMap((map['machineConfig'] as Map).cast<String, dynamic>())).input(),
      privateIp: map['privateIp'] == null ? null : (map['privateIp'] as String).input(),
    );
  }
}

