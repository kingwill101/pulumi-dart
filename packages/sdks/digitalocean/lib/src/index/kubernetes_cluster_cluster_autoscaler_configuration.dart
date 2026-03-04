// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterClusterAutoscalerConfiguration {
  final pulumi.Input<List<String>>? expanders;

  /// String setting how long a node should be unneeded before it's eligible for scale down.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final pulumi.Input<String>? scaleDownUnneededTime;

  /// Float setting the Node utilization level, defined as sum of requested resources divided by capacity, in which a node can be considered for scale down.
  final pulumi.Input<double>? scaleDownUtilizationThreshold;

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

  factory KubernetesClusterClusterAutoscalerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesClusterClusterAutoscalerConfiguration(
      expanders: (() {
        final guardedValue = map['expanders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      scaleDownUnneededTime: (() {
        final guardedValue = map['scaleDownUnneededTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scaleDownUtilizationThreshold: (() {
        final guardedValue = map['scaleDownUtilizationThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
