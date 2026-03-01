// ignore_for_file: unused_element, unnecessary_cast


/// Node kubelet configs.
class NodeKubeletConfig {
  /// Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is 'true' if unspecified.
  final bool? cpuCfsQuota;
  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  final String? cpuCfsQuotaPeriod;
  /// Control the CPU management policy on the node. See https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/ The following values are allowed. * "none": the default, which represents the existing scheduling behavior. * "static": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is 'none' if unspecified.
  final String? cpuManagerPolicy;
  /// Enable or disable Kubelet read only port.
  final bool? insecureKubeletReadonlyPortEnabled;
  /// Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limits Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  final String? podPidsLimit;

  /// Creates a new [NodeKubeletConfig].
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is 'true' if unspecified.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  /// [cpuManagerPolicy] Control the CPU management policy on the node. See https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/ The following values are allowed. * "none": the default, which represents the existing scheduling behavior. * "static": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is 'none' if unspecified.
  /// [insecureKubeletReadonlyPortEnabled] Enable or disable Kubelet read only port.
  /// [podPidsLimit] Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limits Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  NodeKubeletConfig({
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.insecureKubeletReadonlyPortEnabled,
    this.podPidsLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCfsQuota': ?cpuCfsQuota,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'podPidsLimit': ?podPidsLimit,
    };
  }

  factory NodeKubeletConfig.fromMap(Map<String, dynamic> map) {
    return NodeKubeletConfig(
      cpuCfsQuota: map['cpuCfsQuota'] == null ? null : map['cpuCfsQuota'] as bool,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : map['cpuManagerPolicy'] as String,
      insecureKubeletReadonlyPortEnabled: map['insecureKubeletReadonlyPortEnabled'] == null ? null : map['insecureKubeletReadonlyPortEnabled'] as bool,
      podPidsLimit: map['podPidsLimit'] == null ? null : map['podPidsLimit'] as String,
    );
  }
}

