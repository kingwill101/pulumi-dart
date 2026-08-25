// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_kubelet_config_crash_loop_back_off.dart';
import 'node_pool_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'node_pool_node_config_kubelet_config_eviction_soft.dart';
import 'node_pool_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'node_pool_node_config_kubelet_config_memory_manager.dart';
import 'node_pool_node_config_kubelet_config_topology_manager.dart';

class NodePoolNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  final pulumi.Input<List<String>?>? allowedUnsafeSysctls;
  /// Defines the maximum number of container log files that can be present for a container.
  final pulumi.Input<int?>? containerLogMaxFiles;
  /// Defines the maximum size of the container log file before it is rotated.
  final pulumi.Input<String?>? containerLogMaxSize;
  /// Enable CPU CFS quota enforcement for containers that specify CPU limits.
  final pulumi.Input<bool?>? cpuCfsQuota;
  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  final pulumi.Input<String?>? cpuCfsQuotaPeriod;
  /// Control the CPU management policy on the node.
  final pulumi.Input<String?>? cpuManagerPolicy;
  /// Contains configuration options to modify node-level parameters for container restart behavior.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigCrashLoopBackOff?>? crashLoopBackOff;
  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  final pulumi.Input<int?>? evictionMaxPodGracePeriodSeconds;
  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim?>? evictionMinimumReclaim;
  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigEvictionSoft?>? evictionSoft;
  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod?>? evictionSoftGracePeriod;
  /// Defines the percent of disk usage after which image garbage collection is always run.
  final pulumi.Input<int?>? imageGcHighThresholdPercent;
  /// Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  final pulumi.Input<int?>? imageGcLowThresholdPercent;
  /// Defines the maximum age an image can be unused before it is garbage collected.
  final pulumi.Input<String?>? imageMaximumGcAge;
  /// Defines the minimum age for an unused image before it is garbage collected.
  final pulumi.Input<String?>? imageMinimumGcAge;
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String?>? insecureKubeletReadonlyPortEnabled;
  /// Set the maximum number of image pulls in parallel.
  final pulumi.Input<int?>? maxParallelImagePulls;
  /// Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigMemoryManager?>? memoryManager;
  /// Controls the maximum number of processes allowed to run in a pod.
  final pulumi.Input<int?>? podPidsLimit;
  /// Controls the portion of total grace period (in seconds) that is specifically reserved for terminating critical pods.
  final pulumi.Input<int?>? shutdownGracePeriodCriticalPodsSeconds;
  /// Controls the total duration of time (in seconds) the node delays shutdown.
  final pulumi.Input<int?>? shutdownGracePeriodSeconds;
  /// Defines whether to enable single process OOM killer.
  final pulumi.Input<bool?>? singleProcessOomKill;
  /// Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  final pulumi.Input<NodePoolNodeConfigKubeletConfigTopologyManager?>? topologyManager;

  /// Creates a new [NodePoolNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container.
  /// [containerLogMaxSize] Defines the maximum size of the container log file before it is rotated.
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  /// [cpuManagerPolicy] Control the CPU management policy on the node.
  /// [crashLoopBackOff] Contains configuration options to modify node-level parameters for container restart behavior.
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
  /// [shutdownGracePeriodCriticalPodsSeconds] Controls the portion of total grace period (in seconds) that is specifically reserved for terminating critical pods.
  /// [shutdownGracePeriodSeconds] Controls the total duration of time (in seconds) the node delays shutdown.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer.
  /// [topologyManager] Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  const NodePoolNodeConfigKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSize,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.crashLoopBackOff,
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
    this.shutdownGracePeriodCriticalPodsSeconds,
    this.shutdownGracePeriodSeconds,
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
      'crashLoopBackOff': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigCrashLoopBackOff, Map<String, dynamic>>(crashLoopBackOff, (value) => value.toMap()),
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
      'shutdownGracePeriodCriticalPodsSeconds': ?shutdownGracePeriodCriticalPodsSeconds,
      'shutdownGracePeriodSeconds': ?shutdownGracePeriodSeconds,
      'singleProcessOomKill': ?singleProcessOomKill,
      'topologyManager': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigKubeletConfigTopologyManager, Map<String, dynamic>>(topologyManager, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigKubeletConfig(
      allowedUnsafeSysctls: (() { final guardedValue = map['allowedUnsafeSysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerLogMaxFiles: (() { final guardedValue = map['containerLogMaxFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      containerLogMaxSize: (() { final guardedValue = map['containerLogMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCfsQuota: (() { final guardedValue = map['cpuCfsQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cpuCfsQuotaPeriod: (() { final guardedValue = map['cpuCfsQuotaPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuManagerPolicy: (() { final guardedValue = map['cpuManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      crashLoopBackOff: (() { final guardedValue = map['crashLoopBackOff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfigCrashLoopBackOff.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evictionMaxPodGracePeriodSeconds: (() { final guardedValue = map['evictionMaxPodGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      evictionMinimumReclaim: (() { final guardedValue = map['evictionMinimumReclaim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evictionSoft: (() { final guardedValue = map['evictionSoft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfigEvictionSoft.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evictionSoftGracePeriod: (() { final guardedValue = map['evictionSoftGracePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageGcHighThresholdPercent: (() { final guardedValue = map['imageGcHighThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      imageGcLowThresholdPercent: (() { final guardedValue = map['imageGcLowThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      imageMaximumGcAge: (() { final guardedValue = map['imageMaximumGcAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageMinimumGcAge: (() { final guardedValue = map['imageMinimumGcAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insecureKubeletReadonlyPortEnabled: (() { final guardedValue = map['insecureKubeletReadonlyPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxParallelImagePulls: (() { final guardedValue = map['maxParallelImagePulls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memoryManager: (() { final guardedValue = map['memoryManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfigMemoryManager.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podPidsLimit: (() { final guardedValue = map['podPidsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shutdownGracePeriodCriticalPodsSeconds: (() { final guardedValue = map['shutdownGracePeriodCriticalPodsSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shutdownGracePeriodSeconds: (() { final guardedValue = map['shutdownGracePeriodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      singleProcessOomKill: (() { final guardedValue = map['singleProcessOomKill']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      topologyManager: (() { final guardedValue = map['topologyManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigKubeletConfigTopologyManager.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
