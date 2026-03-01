// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterClusterAutoscalerConfiguration {
  final List<String>? expanders;
  /// String setting how long a node should be unneeded before it's eligible for scale down.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final String? scaleDownUnneededTime;
  /// Float setting the Node utilization level, defined as sum of requested resources divided by capacity, in which a node can be considered for scale down.
  final double? scaleDownUtilizationThreshold;

  /// Creates a new [KubernetesClusterClusterAutoscalerConfiguration].
  /// [expanders] Optional.
  /// [scaleDownUnneededTime] String setting how long a node should be unneeded before it's eligible for scale down.
  /// [scaleDownUtilizationThreshold] Float setting the Node utilization level, defined as sum of requested resources divided by capacity, in which a node can be considered for scale down.
  KubernetesClusterClusterAutoscalerConfiguration({
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
      expanders: map['expanders'] == null ? null : (map['expanders'] as List).cast<String>(),
      scaleDownUnneededTime: map['scaleDownUnneededTime'] == null ? null : map['scaleDownUnneededTime'] as String,
      scaleDownUtilizationThreshold: map['scaleDownUtilizationThreshold'] == null ? null : map['scaleDownUtilizationThreshold'] as double,
    );
  }
}

