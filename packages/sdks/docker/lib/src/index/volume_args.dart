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
    this.cluster,
    this.driver,
    this.driverOpts,
    this.labels,
    this.name,
  });

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
      cluster: map['cluster'] == null ? null : (VolumeCluster.fromMap((map['cluster']! as Map).cast<String, dynamic>())).input(),
      driver: map['driver'] == null ? null : (map['driver']! as String).input(),
      driverOpts: map['driverOpts'] == null ? null : ((map['driverOpts']! as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<VolumeLabel>(map['labels']!, (value) => VolumeLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

