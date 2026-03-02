// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_accelerator_config.dart';

/// Parameters that describe cluster nodes.
class GkeNodeConfig {
  /// Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach to each node.
  final pulumi.Input<List<GkeNodePoolAcceleratorConfig>>? accelerators;
  /// Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  final pulumi.Input<String>? bootDiskKmsKey;
  /// Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).
  final pulumi.Input<int>? localSsdCount;
  /// Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machine-types).
  final pulumi.Input<String>? machineType;
  /// Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
  final pulumi.Input<String>? minCpuPlatform;
  /// Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final pulumi.Input<bool>? preemptible;
  /// Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/docs/instances/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final pulumi.Input<bool>? spot;

  /// Creates a new [GkeNodeConfig].
  /// [accelerators] Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach to each node.
  /// [bootDiskKmsKey] Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  /// [localSsdCount] Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).
  /// [machineType] Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machine-types).
  /// [minCpuPlatform] Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
  /// [preemptible] Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  /// [spot] Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/docs/instances/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  GkeNodeConfig({
    this.accelerators,
    this.bootDiskKmsKey,
    this.localSsdCount,
    this.machineType,
    this.minCpuPlatform,
    this.preemptible,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<GkeNodePoolAcceleratorConfig>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<GkeNodePoolAcceleratorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'localSsdCount': ?localSsdCount,
      'machineType': ?machineType,
      'minCpuPlatform': ?minCpuPlatform,
      'preemptible': ?preemptible,
      'spot': ?spot,
    };
  }

  factory GkeNodeConfig.fromMap(Map<String, dynamic> map) {
    return GkeNodeConfig(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<GkeNodePoolAcceleratorConfig>(map['accelerators'], (value) => GkeNodePoolAcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null ? null : (map['bootDiskKmsKey'] as String).input(),
      localSsdCount: map['localSsdCount'] == null ? null : (map['localSsdCount'] as int).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      preemptible: map['preemptible'] == null ? null : (map['preemptible'] as bool).input(),
      spot: map['spot'] == null ? null : (map['spot'] as bool).input(),
    );
  }
}

