// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hpascaling_policy.dart';

/// HPAScalingRules configures the scaling behavior for one direction via scaling Policy Rules and a configurable metric tolerance.
///
/// Scaling Policy Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
///
/// The tolerance is applied to the metric values and prevents scaling too eagerly for small metric variations. (Note that setting a tolerance requires the beta HPAConfigurableTolerance feature gate to be enabled.)
class HPAScalingRules {
  /// policies is a list of potential scaling polices which can be used during scaling. If not set, use the default values: - For scale up: allow doubling the number of pods, or an absolute change of 4 pods in a 15s window. - For scale down: allow all pods to be removed in a 15s window.
  final pulumi.Input<List<HPAScalingPolicy>>? policies;
  /// selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
  final pulumi.Input<String>? selectPolicy;
  /// stabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  final pulumi.Input<int>? stabilizationWindowSeconds;
  /// tolerance is the tolerance on the ratio between the current and desired metric value under which no updates are made to the desired number of replicas (e.g. 0.01 for 1%). Must be greater than or equal to zero. If not set, the default cluster-wide tolerance is applied (by default 10%).
  ///
  /// For example, if autoscaling is configured with a memory consumption target of 100Mi, and scale-down and scale-up tolerances of 5% and 1% respectively, scaling will be triggered when the actual consumption falls below 95Mi or exceeds 101Mi.
  ///
  /// This is an beta field and requires the HPAConfigurableTolerance feature gate to be enabled.
  final pulumi.Input<String>? tolerance;

  /// Creates a new [HPAScalingRules].
  /// [policies] policies is a list of potential scaling polices which can be used during scaling. If not set, use the default values: - For scale up: allow doubling the number of pods, or an absolute change of 4 pods in a 15s window. - For scale down: allow all pods to be removed in a 15s window.
  /// [selectPolicy] selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
  /// [stabilizationWindowSeconds] stabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  /// [tolerance] tolerance is the tolerance on the ratio between the current and desired metric value under which no updates are made to the desired number of replicas (e.g. 0.01 for 1%). Must be greater than or equal to zero. If not set, the default cluster-wide tolerance is applied (by default 10%).
  const HPAScalingRules({
    this.policies,
    this.selectPolicy,
    this.stabilizationWindowSeconds,
    this.tolerance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': ?pulumi.Input.mapOptionalInputValue<List<HPAScalingPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<HPAScalingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectPolicy': ?selectPolicy,
      'stabilizationWindowSeconds': ?stabilizationWindowSeconds,
      'tolerance': ?tolerance,
    };
  }

  factory HPAScalingRules.fromMap(Map<String, dynamic> map) {
    return HPAScalingRules(
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HPAScalingPolicy>(guardedValue, (value) => HPAScalingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selectPolicy: (() { final guardedValue = map['selectPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stabilizationWindowSeconds: (() { final guardedValue = map['stabilizationWindowSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tolerance: (() { final guardedValue = map['tolerance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
