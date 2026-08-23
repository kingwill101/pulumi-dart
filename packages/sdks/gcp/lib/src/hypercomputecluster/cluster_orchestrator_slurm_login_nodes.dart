// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_orchestrator_slurm_login_nodes_boot_disk.dart';
import 'cluster_orchestrator_slurm_login_nodes_instance.dart';
import 'cluster_orchestrator_slurm_login_nodes_storage_config.dart';

class ClusterOrchestratorSlurmLoginNodes {
  /// A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
  /// boot disk for a Compute Engine VM instance.
  /// Structure is documented below.
  final pulumi.Input<ClusterOrchestratorSlurmLoginNodesBootDisk>? bootDisk;
  /// Number of login node instances to create.
  final pulumi.Input<String> count;
  /// Whether [OS Login](https://cloud.google.com/compute/docs/oslogin) should be
  /// enabled on login node instances.
  final pulumi.Input<bool>? enableOsLogin;
  /// Whether login node instances should be assigned [external IP
  /// addresses](https://cloud.google.com/compute/docs/ip-addresses#externaladdresses).
  final pulumi.Input<bool>? enablePublicIps;
  /// (Output)
  /// Information about the login node instances that were created in Compute
  /// Engine.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterOrchestratorSlurmLoginNodesInstance>>? instances;
  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) that
  /// should be applied to each login node instance.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Compute Engine [machine
  /// type](https://cloud.google.com/compute/docs/machine-resource) to use for
  /// login nodes, e.g. `n2-standard-2`.
  final pulumi.Input<String> machineType;
  /// [Startup
  /// script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)
  /// to be run on each login node instance. Max 256KB.
  /// The script must complete within the system-defined default timeout of 5
  /// minutes. For tasks that require more time, consider running them in the
  /// background using methods such as `&` or `nohup`.
  final pulumi.Input<String>? startupScript;
  /// How storage resources should be mounted on each login
  /// node.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterOrchestratorSlurmLoginNodesStorageConfig>>? storageConfigs;
  /// Name of the zone in which login nodes should run, e.g., `us-central1-a`.
  /// Must be in the same region as the cluster, and must match the zone of any
  /// other resources specified in the cluster.
  final pulumi.Input<String> zone;

  /// Creates a new [ClusterOrchestratorSlurmLoginNodes].
  /// [bootDisk] A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the
  /// [count] Number of login node instances to create.
  /// [enableOsLogin] Whether [OS Login](https://cloud.google.com/compute/docs/oslogin) should be
  /// [enablePublicIps] Whether login node instances should be assigned [external IP
  /// [instances] (Output)
  /// [labels] [Labels](https://cloud.google.com/compute/docs/labeling-resources) that
  /// [machineType] Name of the Compute Engine [machine
  /// [startupScript] [Startup
  /// [storageConfigs] How storage resources should be mounted on each login
  /// [zone] Name of the zone in which login nodes should run, e.g., `us-central1-a`.
  const ClusterOrchestratorSlurmLoginNodes({
    this.bootDisk,
    required this.count,
    this.enableOsLogin,
    this.enablePublicIps,
    this.instances,
    this.labels,
    required this.machineType,
    this.startupScript,
    this.storageConfigs,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<ClusterOrchestratorSlurmLoginNodesBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'count': count,
      'enableOsLogin': ?enableOsLogin,
      'enablePublicIps': ?enablePublicIps,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<ClusterOrchestratorSlurmLoginNodesInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<ClusterOrchestratorSlurmLoginNodesInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'machineType': machineType,
      'startupScript': ?startupScript,
      'storageConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterOrchestratorSlurmLoginNodesStorageConfig>, List<Map<String, dynamic>>>(storageConfigs, (value) => pulumi.Input.encodeList<ClusterOrchestratorSlurmLoginNodesStorageConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': zone,
    };
  }

  factory ClusterOrchestratorSlurmLoginNodes.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmLoginNodes(
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOrchestratorSlurmLoginNodesBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: pulumi.Input.fromValue(map['count'] as String),
      enableOsLogin: (() { final guardedValue = map['enableOsLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePublicIps: (() { final guardedValue = map['enablePublicIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterOrchestratorSlurmLoginNodesInstance>(guardedValue, (value) => ClusterOrchestratorSlurmLoginNodesInstance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      startupScript: (() { final guardedValue = map['startupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageConfigs: (() { final guardedValue = map['storageConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterOrchestratorSlurmLoginNodesStorageConfig>(guardedValue, (value) => ClusterOrchestratorSlurmLoginNodesStorageConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
