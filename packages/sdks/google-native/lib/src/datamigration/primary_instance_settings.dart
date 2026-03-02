// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_config.dart';

/// Settings for the cluster's primary instance
class PrimaryInstanceSettings {
  /// Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  final pulumi.Input<Map<String, String>>? databaseFlags;
  /// The ID of the AlloyDB primary instance. The ID must satisfy the regex expression "[a-z0-9-]+".
  final pulumi.Input<String> id;
  /// Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configuration for the machines that host the underlying database engine.
  final pulumi.Input<MachineConfig>? machineConfig;

  /// Creates a new [PrimaryInstanceSettings].
  /// [databaseFlags] Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the AlloyDB documentation for how these can be used.
  /// [id] The ID of the AlloyDB primary instance. The ID must satisfy the regex expression "[a-z0-9-]+".
  /// [labels] Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'value' pairs.
  /// [machineConfig] Configuration for the machines that host the underlying database engine.
  PrimaryInstanceSettings({
    this.databaseFlags,
    required this.id,
    this.labels,
    this.machineConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseFlags': ?databaseFlags,
      'id': id,
      'labels': ?labels,
      'machineConfig': ?pulumi.Input.mapOptionalInputValue<MachineConfig, Map<String, dynamic>>(machineConfig, (value) => value.toMap()),
    };
  }

  factory PrimaryInstanceSettings.fromMap(Map<String, dynamic> map) {
    return PrimaryInstanceSettings(
      databaseFlags: map['databaseFlags'] == null ? null : ((map['databaseFlags']! as Map).cast<String, String>()).input(),
      id: (map['id'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineConfig: map['machineConfig'] == null ? null : (MachineConfig.fromMap((map['machineConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

