// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterClusterAutoscalerConfiguration {
  final pulumi.Input<List<String>>? expanders;
  final pulumi.Input<String>? scaleDownUnneededTime;
  final pulumi.Input<double>? scaleDownUtilizationThreshold;

  /// Creates a new [GetKubernetesClusterClusterAutoscalerConfiguration].
  /// [expanders] Optional.
  /// [scaleDownUnneededTime] Optional.
  /// [scaleDownUtilizationThreshold] Optional.
  GetKubernetesClusterClusterAutoscalerConfiguration({
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

  factory GetKubernetesClusterClusterAutoscalerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterClusterAutoscalerConfiguration(
      expanders: (() { final guardedValue = map['expanders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scaleDownUnneededTime: (() { final guardedValue = map['scaleDownUnneededTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownUtilizationThreshold: (() { final guardedValue = map['scaleDownUtilizationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

