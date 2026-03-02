// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'get_cluster_node_config_kubelet_config_eviction_soft.dart';
import 'get_cluster_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'get_cluster_node_config_kubelet_config_memory_manager.dart';
import 'get_cluster_node_config_kubelet_config_topology_manager.dart';

class GetClusterNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  final pulumi.Input<List<String>> allowedUnsafeSysctls;
  /// Defines the maximum number of container log files that can be present for a container.
  final pulumi.Input<int> containerLogMaxFiles;
  /// Defines the maximum size of the container log file before it is rotated.
  final pulumi.Input<String> containerLogMaxSize;
  /// Enable CPU CFS quota enforcement for containers that specify CPU limits.
  final pulumi.Input<bool> cpuCfsQuota;
  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  final pulumi.Input<String> cpuCfsQuotaPeriod;
  /// Control the CPU management policy on the node.
  final pulumi.Input<String> cpuManagerPolicy;
  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  final pulumi.Input<int> evictionMaxPodGracePeriodSeconds;
  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  final pulumi.Input<List<GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim>> evictionMinimumReclaims;
  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  final pulumi.Input<List<GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod>> evictionSoftGracePeriods;
  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  final pulumi.Input<List<GetClusterNodeConfigKubeletConfigEvictionSoft>> evictionSofts;
  /// Defines the percent of disk usage after which image garbage collection is always run.
  final pulumi.Input<int> imageGcHighThresholdPercent;
  /// Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  final pulumi.Input<int> imageGcLowThresholdPercent;
  /// Defines the maximum age an image can be unused before it is garbage collected.
  final pulumi.Input<String> imageMaximumGcAge;
  /// Defines the minimum age for an unused image before it is garbage collected.
  final pulumi.Input<String> imageMinimumGcAge;
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String> insecureKubeletReadonlyPortEnabled;
  /// Set the maximum number of image pulls in parallel.
  final pulumi.Input<int> maxParallelImagePulls;
  /// Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  final pulumi.Input<List<GetClusterNodeConfigKubeletConfigMemoryManager>> memoryManagers;
  /// Controls the maximum number of processes allowed to run in a pod.
  final pulumi.Input<int> podPidsLimit;
  /// Defines whether to enable single process OOM killer.
  final pulumi.Input<bool> singleProcessOomKill;
  /// Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  final pulumi.Input<List<GetClusterNodeConfigKubeletConfigTopologyManager>> topologyManagers;

  /// Creates a new [GetClusterNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container.
  /// [containerLogMaxSize] Defines the maximum size of the container log file before it is rotated.
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  /// [cpuManagerPolicy] Control the CPU management policy on the node.
  /// [evictionMaxPodGracePeriodSeconds] Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  /// [evictionMinimumReclaims] Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  /// [evictionSoftGracePeriods] Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  /// [evictionSofts] Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  /// [imageGcHighThresholdPercent] Defines the percent of disk usage after which image garbage collection is always run.
  /// [imageGcLowThresholdPercent] Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  /// [imageMaximumGcAge] Defines the maximum age an image can be unused before it is garbage collected.
  /// [imageMinimumGcAge] Defines the minimum age for an unused image before it is garbage collected.
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [maxParallelImagePulls] Set the maximum number of image pulls in parallel.
  /// [memoryManagers] Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  /// [podPidsLimit] Controls the maximum number of processes allowed to run in a pod.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer.
  /// [topologyManagers] Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  GetClusterNodeConfigKubeletConfig({
    required this.allowedUnsafeSysctls,
    required this.containerLogMaxFiles,
    required this.containerLogMaxSize,
    required this.cpuCfsQuota,
    required this.cpuCfsQuotaPeriod,
    required this.cpuManagerPolicy,
    required this.evictionMaxPodGracePeriodSeconds,
    required this.evictionMinimumReclaims,
    required this.evictionSoftGracePeriods,
    required this.evictionSofts,
    required this.imageGcHighThresholdPercent,
    required this.imageGcLowThresholdPercent,
    required this.imageMaximumGcAge,
    required this.imageMinimumGcAge,
    required this.insecureKubeletReadonlyPortEnabled,
    required this.maxParallelImagePulls,
    required this.memoryManagers,
    required this.podPidsLimit,
    required this.singleProcessOomKill,
    required this.topologyManagers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': allowedUnsafeSysctls,
      'containerLogMaxFiles': containerLogMaxFiles,
      'containerLogMaxSize': containerLogMaxSize,
      'cpuCfsQuota': cpuCfsQuota,
      'cpuCfsQuotaPeriod': cpuCfsQuotaPeriod,
      'cpuManagerPolicy': cpuManagerPolicy,
      'evictionMaxPodGracePeriodSeconds': evictionMaxPodGracePeriodSeconds,
      'evictionMinimumReclaims': pulumi.Input.mapInputValue<List<GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim>, List<Map<String, dynamic>>>(evictionMinimumReclaims, (value) => pulumi.Input.encodeList<GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evictionSoftGracePeriods': pulumi.Input.mapInputValue<List<GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod>, List<Map<String, dynamic>>>(evictionSoftGracePeriods, (value) => pulumi.Input.encodeList<GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evictionSofts': pulumi.Input.mapInputValue<List<GetClusterNodeConfigKubeletConfigEvictionSoft>, List<Map<String, dynamic>>>(evictionSofts, (value) => pulumi.Input.encodeList<GetClusterNodeConfigKubeletConfigEvictionSoft, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageGcHighThresholdPercent': imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': imageGcLowThresholdPercent,
      'imageMaximumGcAge': imageMaximumGcAge,
      'imageMinimumGcAge': imageMinimumGcAge,
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
      'maxParallelImagePulls': maxParallelImagePulls,
      'memoryManagers': pulumi.Input.mapInputValue<List<GetClusterNodeConfigKubeletConfigMemoryManager>, List<Map<String, dynamic>>>(memoryManagers, (value) => pulumi.Input.encodeList<GetClusterNodeConfigKubeletConfigMemoryManager, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podPidsLimit': podPidsLimit,
      'singleProcessOomKill': singleProcessOomKill,
      'topologyManagers': pulumi.Input.mapInputValue<List<GetClusterNodeConfigKubeletConfigTopologyManager>, List<Map<String, dynamic>>>(topologyManagers, (value) => pulumi.Input.encodeList<GetClusterNodeConfigKubeletConfigTopologyManager, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfig(
      allowedUnsafeSysctls: ((map['allowedUnsafeSysctls'] as List).cast<String>()).input(),
      containerLogMaxFiles: (map['containerLogMaxFiles'] as int).input(),
      containerLogMaxSize: (map['containerLogMaxSize'] as String).input(),
      cpuCfsQuota: (map['cpuCfsQuota'] as bool).input(),
      cpuCfsQuotaPeriod: (map['cpuCfsQuotaPeriod'] as String).input(),
      cpuManagerPolicy: (map['cpuManagerPolicy'] as String).input(),
      evictionMaxPodGracePeriodSeconds: (map['evictionMaxPodGracePeriodSeconds'] as int).input(),
      evictionMinimumReclaims: (pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim>(map['evictionMinimumReclaims'], (value) => GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap((value as Map).cast<String, dynamic>()))).input(),
      evictionSoftGracePeriods: (pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod>(map['evictionSoftGracePeriods'], (value) => GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap((value as Map).cast<String, dynamic>()))).input(),
      evictionSofts: (pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfigEvictionSoft>(map['evictionSofts'], (value) => GetClusterNodeConfigKubeletConfigEvictionSoft.fromMap((value as Map).cast<String, dynamic>()))).input(),
      imageGcHighThresholdPercent: (map['imageGcHighThresholdPercent'] as int).input(),
      imageGcLowThresholdPercent: (map['imageGcLowThresholdPercent'] as int).input(),
      imageMaximumGcAge: (map['imageMaximumGcAge'] as String).input(),
      imageMinimumGcAge: (map['imageMinimumGcAge'] as String).input(),
      insecureKubeletReadonlyPortEnabled: (map['insecureKubeletReadonlyPortEnabled'] as String).input(),
      maxParallelImagePulls: (map['maxParallelImagePulls'] as int).input(),
      memoryManagers: (pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfigMemoryManager>(map['memoryManagers'], (value) => GetClusterNodeConfigKubeletConfigMemoryManager.fromMap((value as Map).cast<String, dynamic>()))).input(),
      podPidsLimit: (map['podPidsLimit'] as int).input(),
      singleProcessOomKill: (map['singleProcessOomKill'] as bool).input(),
      topologyManagers: (pulumi.Input.decodeList<GetClusterNodeConfigKubeletConfigTopologyManager>(map['topologyManagers'], (value) => GetClusterNodeConfigKubeletConfigTopologyManager.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

