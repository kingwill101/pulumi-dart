// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_auxiliary_node_group_node_group_node_group_config_accelerator.dart';
import 'cluster_cluster_config_auxiliary_node_group_node_group_node_group_config_disk_config.dart';

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig {
  /// The Compute Engine accelerator (GPU) configuration for these instances. Can be specified
  /// multiple times.
  final pulumi.Input<List<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator>>? accelerators;
  /// Disk Config
  final pulumi.Input<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig>? diskConfig;
  /// List of auxiliary node group instance names which have been assigned to the cluster.
  final pulumi.Input<List<String>>? instanceNames;
  /// The name of a Google Compute Engine machine type
  /// to create for the node group. If not specified, GCP will default to a predetermined
  /// computed value (currently `n1-standard-4`).
  final pulumi.Input<String>? machineType;
  /// The name of a minimum generation of CPU family
  /// for the node group. If not specified, GCP will default to a predetermined computed value
  /// for each zone. See [the guide](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  /// for details about which CPU families are available (and defaulted) for each zone.
  final pulumi.Input<String>? minCpuPlatform;
  /// Specifies the number of master nodes to create.
  /// Please set a number greater than 0. Node Group must have at least 1 instance.
  final pulumi.Input<int>? numInstances;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig].
  /// [accelerators] The Compute Engine accelerator (GPU) configuration for these instances. Can be specified
  /// [diskConfig] Disk Config
  /// [instanceNames] List of auxiliary node group instance names which have been assigned to the cluster.
  /// [machineType] The name of a Google Compute Engine machine type
  /// [minCpuPlatform] The name of a minimum generation of CPU family
  /// [numInstances] Specifies the number of master nodes to create.
  const ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig({
    this.accelerators,
    this.diskConfig,
    this.instanceNames,
    this.machineType,
    this.minCpuPlatform,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskConfig': ?pulumi.Input.mapOptionalInputValue<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig, Map<String, dynamic>>(diskConfig, (value) => value.toMap()),
      'instanceNames': ?instanceNames,
      'machineType': ?machineType,
      'minCpuPlatform': ?minCpuPlatform,
      'numInstances': ?numInstances,
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfig(
      accelerators: (() { final guardedValue = map['accelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator>(guardedValue, (value) => ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskConfig: (() { final guardedValue = map['diskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigDiskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceNames: (() { final guardedValue = map['instanceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numInstances: (() { final guardedValue = map['numInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

