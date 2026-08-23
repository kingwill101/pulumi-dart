// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_policy_cpu_utilization_predictive_method.dart';

/// CPU utilization policy.
class AutoscalingPolicyCpuUtilization {
  /// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
  final pulumi.Input<AutoscalingPolicyCpuUtilizationPredictiveMethod>? predictiveMethod;
  /// The target CPU utilization that the autoscaler maintains. Must be a float value in the range (0, 1]. If not specified, the default is 0.6. If the CPU level is below the target utilization, the autoscaler scales in the number of instances until it reaches the minimum number of instances you specified or until the average CPU of your instances reaches the target utilization. If the average CPU is above the target utilization, the autoscaler scales out until it reaches the maximum number of instances you specified or until the average utilization reaches the target utilization.
  final pulumi.Input<double>? utilizationTarget;

  /// Creates a new [AutoscalingPolicyCpuUtilization].
  /// [predictiveMethod] Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
  /// [utilizationTarget] The target CPU utilization that the autoscaler maintains. Must be a float value in the range (0, 1]. If not specified, the default is 0.6. If the CPU level is below the target utilization, the autoscaler scales in the number of instances until it reaches the minimum number of instances you specified or until the average CPU of your instances reaches the target utilization. If the average CPU is above the target utilization, the autoscaler scales out until it reaches the maximum number of instances you specified or until the average utilization reaches the target utilization.
  const AutoscalingPolicyCpuUtilization({
    this.predictiveMethod,
    this.utilizationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predictiveMethod': ?pulumi.Input.mapOptionalInputValue<AutoscalingPolicyCpuUtilizationPredictiveMethod, String>(predictiveMethod, (value) => value.wireValue),
      'utilizationTarget': ?utilizationTarget,
    };
  }

  factory AutoscalingPolicyCpuUtilization.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyCpuUtilization(
      predictiveMethod: (() { final guardedValue = map['predictiveMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoscalingPolicyCpuUtilizationPredictiveMethod.fromValue(guardedValue as String)); })(),
      utilizationTarget: (() { final guardedValue = map['utilizationTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
