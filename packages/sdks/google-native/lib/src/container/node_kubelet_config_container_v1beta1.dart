// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node kubelet configs.
class NodeKubeletConfigContainerV1beta1 {
  /// Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is 'true' if unspecified.
  final pulumi.Input<bool>? cpuCfsQuota;
  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  final pulumi.Input<String>? cpuCfsQuotaPeriod;
  /// Control the CPU management policy on the node. See https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/ The following values are allowed. * "none": the default, which represents the existing scheduling behavior. * "static": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is 'none' if unspecified.
  final pulumi.Input<String>? cpuManagerPolicy;
  /// Enable or disable Kubelet read only port.
  final pulumi.Input<bool>? insecureKubeletReadonlyPortEnabled;
  /// Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limits Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  final pulumi.Input<String>? podPidsLimit;

  /// Creates a new [NodeKubeletConfigContainerV1beta1].
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled by default which makes kubelet use CFS quota (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to enforce container CPU limits. Otherwise, CPU limits will not be enforced at all. Disable this option to mitigate CPU throttling problems while still having your pods to be in Guaranteed QoS class by specifying the CPU limits. The default value is 'true' if unspecified.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  /// [cpuManagerPolicy] Control the CPU management policy on the node. See https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/ The following values are allowed. * "none": the default, which represents the existing scheduling behavior. * "static": allows pods with certain resource characteristics to be granted increased CPU affinity and exclusivity on the node. The default value is 'none' if unspecified.
  /// [insecureKubeletReadonlyPortEnabled] Enable or disable Kubelet read only port.
  /// [podPidsLimit] Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limits Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  const NodeKubeletConfigContainerV1beta1({
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

  factory NodeKubeletConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeKubeletConfigContainerV1beta1(
      cpuCfsQuota: (() { final guardedValue = map['cpuCfsQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cpuCfsQuotaPeriod: (() { final guardedValue = map['cpuCfsQuotaPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuManagerPolicy: (() { final guardedValue = map['cpuManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insecureKubeletReadonlyPortEnabled: (() { final guardedValue = map['insecureKubeletReadonlyPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      podPidsLimit: (() { final guardedValue = map['podPidsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
