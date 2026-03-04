// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'cluster_node_config_kubelet_config_eviction_soft.dart';
import 'cluster_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'cluster_node_config_kubelet_config_memory_manager.dart';
import 'cluster_node_config_kubelet_config_topology_manager.dart';

class ClusterNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods. The allowed sysctl groups are `kernel.shm*`, `kernel.msg*`, `kernel.sem`, `fs.mqueue.*`, and `net.*`.
  final pulumi.Input<List<String>>? allowedUnsafeSysctls;

  /// Defines the maximum number of container log files that can be present for a container. The integer must be between 2 and 10, inclusive.
  final pulumi.Input<int>? containerLogMaxFiles;

  /// Defines the maximum size of the
  /// container log file before it is rotated. Specified as a positive number and a
  /// unit suffix, such as `"100Ki"`, `"10Mi"`. Valid units are "Ki", "Mi", "Gi".
  /// The value must be between `"10Mi"` and `"500Mi"`, inclusive. And the total container log size
  /// (`container_log_max_size` * `container_log_max_files`) cannot exceed 1% of the total storage of the node.
  final pulumi.Input<String>? containerLogMaxSize;

  /// If true, enables CPU CFS quota enforcement for
  /// containers that specify CPU limits.
  final pulumi.Input<bool>? cpuCfsQuota;

  /// The CPU CFS quota period value. Specified
  /// as a sequence of decimal numbers, each with optional fraction and a unit suffix,
  /// such as `"300ms"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m",
  /// "h". The value must be a positive duration.
  final pulumi.Input<String>? cpuCfsQuotaPeriod;

  /// The CPU management policy on the node. See
  /// [K8S CPU Management Policies](https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/).
  /// One of `"none"` or `"static"`. If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  /// Prior to the 6.4.0 this field was marked as required. The workaround for the required field
  /// is setting the empty string `""`, which will function identically to not setting this field.
  final pulumi.Input<String>? cpuManagerPolicy;

  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met. The integer must be positive and not exceed 300.
  final pulumi.Input<int>? evictionMaxPodGracePeriodSeconds;

  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigKubeletConfigEvictionMinimumReclaim>?
  evictionMinimumReclaim;

  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigKubeletConfigEvictionSoft>? evictionSoft;

  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod>?
  evictionSoftGracePeriod;

  /// Defines the percent of disk usage after which image garbage collection is always run. The integer must be between 10 and 85, inclusive.
  final pulumi.Input<int>? imageGcHighThresholdPercent;

  /// Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to. The integer must be between 10 and 85, inclusive.
  final pulumi.Input<int>? imageGcLowThresholdPercent;

  /// Defines the maximum age an image can be unused before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`, and `"2h45m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  final pulumi.Input<String>? imageMaximumGcAge;

  /// Defines the minimum age for an unused image before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`. The value cannot be greater than "2m".
  final pulumi.Input<String>? imageMinimumGcAge;

  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String>? insecureKubeletReadonlyPortEnabled;

  /// Set the maximum number of image pulls in parallel. The integer must be between 2 and 5, inclusive.
  final pulumi.Input<int>? maxParallelImagePulls;

  /// Configuration for the [memory manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/) on the node.
  /// The memory manager optimizes memory and hugepages allocation for pods, especially
  /// those in the Guaranteed QoS class, by influencing NUMA affinity. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigKubeletConfigMemoryManager>?
  memoryManager;

  /// Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  final pulumi.Input<int>? podPidsLimit;

  /// Defines whether to enable single process OOM killer. If true, the processes in the container will be OOM killed individually instead of as a group.
  final pulumi.Input<bool>? singleProcessOomKill;

  /// These settings control the kubelet's [Topology Manager policy](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/#topology-manager-policies), which coordinates the set of components responsible for performance optimizations related to CPU isolation, memory, and device locality. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigKubeletConfigTopologyManager>?
  topologyManager;

  /// Creates a new [ClusterNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods. The allowed sysctl groups are `kernel.shm*`, `kernel.msg*`, `kernel.sem`, `fs.mqueue.*`, and `net.*`.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container. The integer must be between 2 and 10, inclusive.
  /// [containerLogMaxSize] Defines the maximum size of the
  /// [cpuCfsQuota] If true, enables CPU CFS quota enforcement for
  /// [cpuCfsQuotaPeriod] The CPU CFS quota period value. Specified
  /// [cpuManagerPolicy] The CPU management policy on the node. See
  /// [evictionMaxPodGracePeriodSeconds] Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met. The integer must be positive and not exceed 300.
  /// [evictionMinimumReclaim] Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction. Structure is documented below.
  /// [evictionSoft] Defines a map of signal names to quantities or percentage that defines soft eviction thresholds. Structure is documented below.
  /// [evictionSoftGracePeriod] Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period. Structure is documented below.
  /// [imageGcHighThresholdPercent] Defines the percent of disk usage after which image garbage collection is always run. The integer must be between 10 and 85, inclusive.
  /// [imageGcLowThresholdPercent] Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to. The integer must be between 10 and 85, inclusive.
  /// [imageMaximumGcAge] Defines the maximum age an image can be unused before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`, and `"2h45m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  /// [imageMinimumGcAge] Defines the minimum age for an unused image before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`. The value cannot be greater than "2m".
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [maxParallelImagePulls] Set the maximum number of image pulls in parallel. The integer must be between 2 and 5, inclusive.
  /// [memoryManager] Configuration for the [memory manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/) on the node.
  /// [podPidsLimit] Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer. If true, the processes in the container will be OOM killed individually instead of as a group.
  /// [topologyManager] These settings control the kubelet's [Topology Manager policy](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/#topology-manager-policies), which coordinates the set of components responsible for performance optimizations related to CPU isolation, memory, and device locality. Structure is documented below.
  ClusterNodeConfigKubeletConfig({
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
      'evictionMinimumReclaim':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNodeConfigKubeletConfigEvictionMinimumReclaim,
            Map<String, dynamic>
          >(evictionMinimumReclaim, (value) => value.toMap()),
      'evictionSoft':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNodeConfigKubeletConfigEvictionSoft,
            Map<String, dynamic>
          >(evictionSoft, (value) => value.toMap()),
      'evictionSoftGracePeriod':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod,
            Map<String, dynamic>
          >(evictionSoftGracePeriod, (value) => value.toMap()),
      'imageGcHighThresholdPercent': ?imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': ?imageGcLowThresholdPercent,
      'imageMaximumGcAge': ?imageMaximumGcAge,
      'imageMinimumGcAge': ?imageMinimumGcAge,
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'maxParallelImagePulls': ?maxParallelImagePulls,
      'memoryManager':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNodeConfigKubeletConfigMemoryManager,
            Map<String, dynamic>
          >(memoryManager, (value) => value.toMap()),
      'podPidsLimit': ?podPidsLimit,
      'singleProcessOomKill': ?singleProcessOomKill,
      'topologyManager':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNodeConfigKubeletConfigTopologyManager,
            Map<String, dynamic>
          >(topologyManager, (value) => value.toMap()),
    };
  }

  factory ClusterNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfig(
      allowedUnsafeSysctls: (() {
        final guardedValue = map['allowedUnsafeSysctls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      containerLogMaxFiles: (() {
        final guardedValue = map['containerLogMaxFiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      containerLogMaxSize: (() {
        final guardedValue = map['containerLogMaxSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuCfsQuota: (() {
        final guardedValue = map['cpuCfsQuota'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cpuCfsQuotaPeriod: (() {
        final guardedValue = map['cpuCfsQuotaPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpuManagerPolicy: (() {
        final guardedValue = map['cpuManagerPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      evictionMaxPodGracePeriodSeconds: (() {
        final guardedValue = map['evictionMaxPodGracePeriodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      evictionMinimumReclaim: (() {
        final guardedValue = map['evictionMinimumReclaim'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      evictionSoft: (() {
        final guardedValue = map['evictionSoft'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNodeConfigKubeletConfigEvictionSoft.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      evictionSoftGracePeriod: (() {
        final guardedValue = map['evictionSoftGracePeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageGcHighThresholdPercent: (() {
        final guardedValue = map['imageGcHighThresholdPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      imageGcLowThresholdPercent: (() {
        final guardedValue = map['imageGcLowThresholdPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      imageMaximumGcAge: (() {
        final guardedValue = map['imageMaximumGcAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageMinimumGcAge: (() {
        final guardedValue = map['imageMinimumGcAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      insecureKubeletReadonlyPortEnabled: (() {
        final guardedValue = map['insecureKubeletReadonlyPortEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxParallelImagePulls: (() {
        final guardedValue = map['maxParallelImagePulls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memoryManager: (() {
        final guardedValue = map['memoryManager'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNodeConfigKubeletConfigMemoryManager.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      podPidsLimit: (() {
        final guardedValue = map['podPidsLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      singleProcessOomKill: (() {
        final guardedValue = map['singleProcessOomKill'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      topologyManager: (() {
        final guardedValue = map['topologyManager'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNodeConfigKubeletConfigTopologyManager.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
