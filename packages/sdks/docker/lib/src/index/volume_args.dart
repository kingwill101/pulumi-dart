// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_cluster.dart';
import 'volume_label.dart';

/// {@template pulumi_index_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_index_volume_volume_args_doc}
class VolumeArgs {
  /// Cluster-specific options for volume creation. Only works if the Docker daemon is running in swarm mode and is the swarm manager.
  final pulumi.Input<VolumeCluster>? cluster;
  /// Driver type for the volume. Defaults to `local`.
  final pulumi.Input<String>? driver;
  /// Options specific to the driver.
  final pulumi.Input<Map<String, String>>? driverOpts;
  /// User-defined key/value metadata
  final pulumi.Input<List<VolumeLabel>>? labels;
  /// The name of the Docker volume (will be generated if not provided).
  final pulumi.Input<String>? name;

  /// Creates a new [VolumeArgs].
  /// [cluster] Cluster-specific options for volume creation. Only works if the Docker daemon is running in swarm mode and is the swarm manager.
  /// [driver] Driver type for the volume. Defaults to `local`.
  /// [driverOpts] Options specific to the driver.
  /// [labels] User-defined key/value metadata
  /// [name] The name of the Docker volume (will be generated if not provided).
  VolumeArgs({
    pulumi.Output<VolumeCluster>? cluster,
    pulumi.Output<String>? driver,
    pulumi.Output<Map<String, String>>? driverOpts,
    pulumi.Output<List<VolumeLabel>>? labels,
    pulumi.Output<String>? name,
  }) :
      cluster = pulumi.Input.asOptionalInput<VolumeCluster>(cluster),
      driver = pulumi.Input.asOptionalInput<String>(driver),
      driverOpts = pulumi.Input.asOptionalInput<Map<String, String>>(driverOpts),
      labels = pulumi.Input.asOptionalInput<List<VolumeLabel>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?pulumi.Input.mapOptionalInputValue<VolumeCluster, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'driver': ?driver,
      'driverOpts': ?driverOpts,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<VolumeLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<VolumeLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      cluster: map['cluster'] == null ? null : pulumi.Output.create<VolumeCluster>(VolumeCluster.fromMap((map['cluster'] as Map).cast<String, dynamic>())),
      driver: map['driver'] == null ? null : pulumi.Output.create<String>(map['driver'] as String),
      driverOpts: map['driverOpts'] == null ? null : pulumi.Output.create<Map<String, String>>((map['driverOpts'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<VolumeLabel>>(pulumi.Input.decodeList<VolumeLabel>(map['labels'], (value) => VolumeLabel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

