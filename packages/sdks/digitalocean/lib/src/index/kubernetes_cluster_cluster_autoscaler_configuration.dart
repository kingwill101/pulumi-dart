// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterClusterAutoscalerConfiguration {
  /// A list of cluster autoscaler expander strategies to apply in order when selecting which node pool to scale up. Valid values are `random`, `priority`, and `least-waste`. The autoscaler uses each expander from the list to narrow the selection until a single node pool remains. If multiple node pools remain after all expanders are applied, one is chosen at random. When using the `priority` expander, configure priorities in the `cluster-autoscaler-priority-expander` ConfigMap in the `kube-system` namespace (see [Configuring Priority Expander](https://docs.digitalocean.com/products/kubernetes/how-to/autoscale/#configuring-priority-expander)).
  final pulumi.Input<List<String>>? expanders;
  /// String setting how long a node should be unneeded before it's eligible for scale down.
  final pulumi.Input<String>? scaleDownUnneededTime;
  /// Float setting the Node utilization level, defined as sum of requested resources divided by capacity, in which a node can be considered for scale down.
  final pulumi.Input<double>? scaleDownUtilizationThreshold;

  /// Creates a new [KubernetesClusterClusterAutoscalerConfiguration].
  /// [expanders] A list of cluster autoscaler expander strategies to apply in order when selecting which node pool to scale up. Valid values are `random`, `priority`, and `least-waste`. The autoscaler uses each expander from the list to narrow the selection until a single node pool remains. If multiple node pools remain after all expanders are applied, one is chosen at random. When using the `priority` expander, configure priorities in the `cluster-autoscaler-priority-expander` ConfigMap in the `kube-system` namespace (see [Configuring Priority Expander](https://docs.digitalocean.com/products/kubernetes/how-to/autoscale/#configuring-priority-expander)).
  /// [scaleDownUnneededTime] String setting how long a node should be unneeded before it's eligible for scale down.
  /// [scaleDownUtilizationThreshold] Float setting the Node utilization level, defined as sum of requested resources divided by capacity, in which a node can be considered for scale down.
  const KubernetesClusterClusterAutoscalerConfiguration({
    this.expanders,
    this.scaleDownUnneededTime,
    this.scaleDownUtilizationThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expanders': ?expanders,
      'scaleDownUnneededTime': ?scaleDownUnneededTime,
      'scaleDownUtilizationThreshold': ?scaleDownUtilizationThreshold,
    };
  }

  factory KubernetesClusterClusterAutoscalerConfiguration.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterClusterAutoscalerConfiguration(
      expanders: (() { final guardedValue = map['expanders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scaleDownUnneededTime: (() { final guardedValue = map['scaleDownUnneededTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownUtilizationThreshold: (() { final guardedValue = map['scaleDownUtilizationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
