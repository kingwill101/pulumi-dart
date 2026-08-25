// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_kubelet_config_crash_loop_back_off.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_eviction_soft.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_memory_manager.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_topology_manager.dart';

class GetClusterNodePoolNodeConfigKubeletConfig {
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
  /// Contains configuration options to modify node-level parameters for container restart behavior.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff>> crashLoopBackOffs;
  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  final pulumi.Input<int> evictionMaxPodGracePeriodSeconds;
  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim>> evictionMinimumReclaims;
  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod>> evictionSoftGracePeriods;
  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft>> evictionSofts;
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
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager>> memoryManagers;
  /// Controls the maximum number of processes allowed to run in a pod.
  final pulumi.Input<int> podPidsLimit;
  /// Controls the portion of total grace period (in seconds) that is specifically reserved for terminating critical pods.
  final pulumi.Input<int> shutdownGracePeriodCriticalPodsSeconds;
  /// Controls the total duration of time (in seconds) the node delays shutdown.
  final pulumi.Input<int> shutdownGracePeriodSeconds;
  /// Defines whether to enable single process OOM killer.
  final pulumi.Input<bool> singleProcessOomKill;
  /// Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager>> topologyManagers;

  /// Creates a new [GetClusterNodePoolNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container.
  /// [containerLogMaxSize] Defines the maximum size of the container log file before it is rotated.
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  /// [cpuManagerPolicy] Control the CPU management policy on the node.
  /// [crashLoopBackOffs] Contains configuration options to modify node-level parameters for container restart behavior.
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
  /// [shutdownGracePeriodCriticalPodsSeconds] Controls the portion of total grace period (in seconds) that is specifically reserved for terminating critical pods.
  /// [shutdownGracePeriodSeconds] Controls the total duration of time (in seconds) the node delays shutdown.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer.
  /// [topologyManagers] Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  const GetClusterNodePoolNodeConfigKubeletConfig({
    required this.allowedUnsafeSysctls,
    required this.containerLogMaxFiles,
    required this.containerLogMaxSize,
    required this.cpuCfsQuota,
    required this.cpuCfsQuotaPeriod,
    required this.cpuManagerPolicy,
    required this.crashLoopBackOffs,
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
    required this.shutdownGracePeriodCriticalPodsSeconds,
    required this.shutdownGracePeriodSeconds,
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
      'crashLoopBackOffs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff>, List<Map<String, dynamic>>>(crashLoopBackOffs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evictionMaxPodGracePeriodSeconds': evictionMaxPodGracePeriodSeconds,
      'evictionMinimumReclaims': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim>, List<Map<String, dynamic>>>(evictionMinimumReclaims, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evictionSoftGracePeriods': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod>, List<Map<String, dynamic>>>(evictionSoftGracePeriods, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evictionSofts': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft>, List<Map<String, dynamic>>>(evictionSofts, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageGcHighThresholdPercent': imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': imageGcLowThresholdPercent,
      'imageMaximumGcAge': imageMaximumGcAge,
      'imageMinimumGcAge': imageMinimumGcAge,
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
      'maxParallelImagePulls': maxParallelImagePulls,
      'memoryManagers': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager>, List<Map<String, dynamic>>>(memoryManagers, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager, Map<String, dynamic>>(value, (value) => value.toMap())),
      'podPidsLimit': podPidsLimit,
      'shutdownGracePeriodCriticalPodsSeconds': shutdownGracePeriodCriticalPodsSeconds,
      'shutdownGracePeriodSeconds': shutdownGracePeriodSeconds,
      'singleProcessOomKill': singleProcessOomKill,
      'topologyManagers': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager>, List<Map<String, dynamic>>>(topologyManagers, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfig(
      allowedUnsafeSysctls: pulumi.Input.fromValue((map['allowedUnsafeSysctls'] as List).cast<String>()),
      containerLogMaxFiles: pulumi.Input.fromValue((map['containerLogMaxFiles'] as num).toInt()),
      containerLogMaxSize: pulumi.Input.fromValue(map['containerLogMaxSize'] as String),
      cpuCfsQuota: pulumi.Input.fromValue(map['cpuCfsQuota'] as bool),
      cpuCfsQuotaPeriod: pulumi.Input.fromValue(map['cpuCfsQuotaPeriod'] as String),
      cpuManagerPolicy: pulumi.Input.fromValue(map['cpuManagerPolicy'] as String),
      crashLoopBackOffs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff>(map['crashLoopBackOffs']!, (value) => GetClusterNodePoolNodeConfigKubeletConfigCrashLoopBackOff.fromMap((value as Map).cast<String, dynamic>()))),
      evictionMaxPodGracePeriodSeconds: pulumi.Input.fromValue((map['evictionMaxPodGracePeriodSeconds'] as num).toInt()),
      evictionMinimumReclaims: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim>(map['evictionMinimumReclaims']!, (value) => GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap((value as Map).cast<String, dynamic>()))),
      evictionSoftGracePeriods: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod>(map['evictionSoftGracePeriods']!, (value) => GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap((value as Map).cast<String, dynamic>()))),
      evictionSofts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft>(map['evictionSofts']!, (value) => GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft.fromMap((value as Map).cast<String, dynamic>()))),
      imageGcHighThresholdPercent: pulumi.Input.fromValue((map['imageGcHighThresholdPercent'] as num).toInt()),
      imageGcLowThresholdPercent: pulumi.Input.fromValue((map['imageGcLowThresholdPercent'] as num).toInt()),
      imageMaximumGcAge: pulumi.Input.fromValue(map['imageMaximumGcAge'] as String),
      imageMinimumGcAge: pulumi.Input.fromValue(map['imageMinimumGcAge'] as String),
      insecureKubeletReadonlyPortEnabled: pulumi.Input.fromValue(map['insecureKubeletReadonlyPortEnabled'] as String),
      maxParallelImagePulls: pulumi.Input.fromValue((map['maxParallelImagePulls'] as num).toInt()),
      memoryManagers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager>(map['memoryManagers']!, (value) => GetClusterNodePoolNodeConfigKubeletConfigMemoryManager.fromMap((value as Map).cast<String, dynamic>()))),
      podPidsLimit: pulumi.Input.fromValue((map['podPidsLimit'] as num).toInt()),
      shutdownGracePeriodCriticalPodsSeconds: pulumi.Input.fromValue((map['shutdownGracePeriodCriticalPodsSeconds'] as num).toInt()),
      shutdownGracePeriodSeconds: pulumi.Input.fromValue((map['shutdownGracePeriodSeconds'] as num).toInt()),
      singleProcessOomKill: pulumi.Input.fromValue(map['singleProcessOomKill'] as bool),
      topologyManagers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager>(map['topologyManagers']!, (value) => GetClusterNodePoolNodeConfigKubeletConfigTopologyManager.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
