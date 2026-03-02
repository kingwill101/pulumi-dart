// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'node_pool_node_config_kubelet_config_eviction_soft.dart';
import 'node_pool_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'node_pool_node_config_kubelet_config_memory_manager.dart';
import 'node_pool_node_config_kubelet_config_topology_manager.dart';

class NodePoolNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  final pulumi.Input<List<String>>? allowedUnsafeSysctls;
  /// Defines the maximum number of container log files that can be present for a container.
  final pulumi.Input<int>? containerLogMaxFiles;
  /// Defines the maximum size of the container log file before it is rotated.
  final pulumi.Input<String>? containerLogMaxSize;
  /// Enable CPU CFS quota enforcement for containers that specify CPU limits.
  final pulumi.Input<bool>? cpuCfsQuota;
  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  final pulumi.Input<String>? cpuCfsQuotaPeriod;
  /// Control the CPU management policy on the node.
  final pulumi.Input<String>? cpuManagerPolicy;
  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  final pulumi.Input<int>? evictionMaxPodGracePeriodSeconds;
  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim>? evictionMinimumReclaim;
  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigEvictionSoft>? evictionSoft;
  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod>? evictionSoftGracePeriod;
  /// Defines the percent of disk usage after which image garbage collection is always run.
  final pulumi.Input<int>? imageGcHighThresholdPercent;
  /// Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  final pulumi.Input<int>? imageGcLowThresholdPercent;
  /// Defines the maximum age an image can be unused before it is garbage collected.
  final pulumi.Input<String>? imageMaximumGcAge;
  /// Defines the minimum age for an unused image before it is garbage collected.
  final pulumi.Input<String>? imageMinimumGcAge;
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String>? insecureKubeletReadonlyPortEnabled;
  /// Set the maximum number of image pulls in parallel.
  final pulumi.Input<int>? maxParallelImagePulls;
  /// Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigMemoryManager>? memoryManager;
  /// Controls the maximum number of processes allowed to run in a pod.
  final pulumi.Input<int>? podPidsLimit;
  /// Defines whether to enable single process OOM killer.
  final pulumi.Input<bool>? singleProcessOomKill;
  /// Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigTopologyManager>? topologyManager;

  /// Creates a new [NodePoolNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container.
  /// [containerLogMaxSize] Defines the maximum size of the container log file before it is rotated.
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  /// [cpuManagerPolicy] Control the CPU management policy on the node.
  /// [evictionMaxPodGracePeriodSeconds] Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  /// [evictionMinimumReclaim] Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  /// [evictionSoft] Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  /// [evictionSoftGracePeriod] Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  /// [imageGcHighThresholdPercent] Defines the percent of disk usage after which image garbage collection is always run.
  /// [imageGcLowThresholdPercent] Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  /// [imageMaximumGcAge] Defines the maximum age an image can be unused before it is garbage collected.
  /// [imageMinimumGcAge] Defines the minimum age for an unused image before it is garbage collected.
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [maxParallelImagePulls] Set the maximum number of image pulls in parallel.
  /// [memoryManager] Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  /// [podPidsLimit] Controls the maximum number of processes allowed to run in a pod.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer.
  /// [topologyManager] Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  NodePoolNodeConfigKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSize,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.evictionMaxPodGracePeriodSeconds,
    this.evictionMinimumReclaim,
    this.evictionSoft,
    this.evictionSoftGracePeriod,
    this.imageGcHighThresholdPercent,
    this.imageGcLowThresholdPercent,
    this.imageMaximumGcAge,
    this.imageMinimumGcAge,
    this.insecureKubeletReadonlyPortEnabled,
    this.maxParallelImagePulls,
    this.memoryManager,
    this.podPidsLimit,
    this.singleProcessOomKill,
    this.topologyManager,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'containerLogMaxFiles': ?containerLogMaxFiles,
      'containerLogMaxSize': ?containerLogMaxSize,
      'cpuCfsQuota': ?cpuCfsQuota,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'evictionMaxPodGracePeriodSeconds': ?evictionMaxPodGracePeriodSeconds,
      'evictionMinimumReclaim': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim, Map<String, dynamic>>(evictionMinimumReclaim, (value) => value.toMap()),
      'evictionSoft': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigEvictionSoft, Map<String, dynamic>>(evictionSoft, (value) => value.toMap()),
      'evictionSoftGracePeriod': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod, Map<String, dynamic>>(evictionSoftGracePeriod, (value) => value.toMap()),
      'imageGcHighThresholdPercent': ?imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': ?imageGcLowThresholdPercent,
      'imageMaximumGcAge': ?imageMaximumGcAge,
      'imageMinimumGcAge': ?imageMinimumGcAge,
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'maxParallelImagePulls': ?maxParallelImagePulls,
      'memoryManager': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigMemoryManager, Map<String, dynamic>>(memoryManager, (value) => value.toMap()),
      'podPidsLimit': ?podPidsLimit,
      'singleProcessOomKill': ?singleProcessOomKill,
      'topologyManager': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigTopologyManager, Map<String, dynamic>>(topologyManager, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfig(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null ? null : ((map['allowedUnsafeSysctls'] as List).cast<String>()).input(),
      containerLogMaxFiles: map['containerLogMaxFiles'] == null ? null : (map['containerLogMaxFiles'] as int).input(),
      containerLogMaxSize: map['containerLogMaxSize'] == null ? null : (map['containerLogMaxSize'] as String).input(),
      cpuCfsQuota: map['cpuCfsQuota'] == null ? null : (map['cpuCfsQuota'] as bool).input(),
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : (map['cpuCfsQuotaPeriod'] as String).input(),
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : (map['cpuManagerPolicy'] as String).input(),
      evictionMaxPodGracePeriodSeconds: map['evictionMaxPodGracePeriodSeconds'] == null ? null : (map['evictionMaxPodGracePeriodSeconds'] as int).input(),
      evictionMinimumReclaim: map['evictionMinimumReclaim'] == null ? null : (NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap((map['evictionMinimumReclaim'] as Map).cast<String, dynamic>())).input(),
      evictionSoft: map['evictionSoft'] == null ? null : (NodePoolNodeConfigKubeletConfigEvictionSoft.fromMap((map['evictionSoft'] as Map).cast<String, dynamic>())).input(),
      evictionSoftGracePeriod: map['evictionSoftGracePeriod'] == null ? null : (NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap((map['evictionSoftGracePeriod'] as Map).cast<String, dynamic>())).input(),
      imageGcHighThresholdPercent: map['imageGcHighThresholdPercent'] == null ? null : (map['imageGcHighThresholdPercent'] as int).input(),
      imageGcLowThresholdPercent: map['imageGcLowThresholdPercent'] == null ? null : (map['imageGcLowThresholdPercent'] as int).input(),
      imageMaximumGcAge: map['imageMaximumGcAge'] == null ? null : (map['imageMaximumGcAge'] as String).input(),
      imageMinimumGcAge: map['imageMinimumGcAge'] == null ? null : (map['imageMinimumGcAge'] as String).input(),
      insecureKubeletReadonlyPortEnabled: map['insecureKubeletReadonlyPortEnabled'] == null ? null : (map['insecureKubeletReadonlyPortEnabled'] as String).input(),
      maxParallelImagePulls: map['maxParallelImagePulls'] == null ? null : (map['maxParallelImagePulls'] as int).input(),
      memoryManager: map['memoryManager'] == null ? null : (NodePoolNodeConfigKubeletConfigMemoryManager.fromMap((map['memoryManager'] as Map).cast<String, dynamic>())).input(),
      podPidsLimit: map['podPidsLimit'] == null ? null : (map['podPidsLimit'] as int).input(),
      singleProcessOomKill: map['singleProcessOomKill'] == null ? null : (map['singleProcessOomKill'] as bool).input(),
      topologyManager: map['topologyManager'] == null ? null : (NodePoolNodeConfigKubeletConfigTopologyManager.fromMap((map['topologyManager'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

