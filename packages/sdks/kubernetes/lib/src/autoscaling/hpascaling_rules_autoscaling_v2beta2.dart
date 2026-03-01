// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hpascaling_policy_autoscaling_v2beta2.dart';

/// HPAScalingRules configures the scaling behavior for one direction. These Rules are applied after calculating DesiredReplicas from metrics for the HPA. They can limit the scaling velocity by specifying scaling policies. They can prevent flapping by specifying the stabilization window, so that the number of replicas is not set instantly, instead, the safest value from the stabilization window is chosen.
class HPAScalingRulesAutoscalingV2beta2 {
  /// policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
  final List<HPAScalingPolicyAutoscalingV2beta2>? policies;
  /// selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
  final String? selectPolicy;
  /// StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  final int? stabilizationWindowSeconds;

  /// Creates a new [HPAScalingRulesAutoscalingV2beta2].
  /// [policies] policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
  /// [selectPolicy] selectPolicy is used to specify which policy should be used. If not set, the default value MaxPolicySelect is used.
  /// [stabilizationWindowSeconds] StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  HPAScalingRulesAutoscalingV2beta2({
    this.policies,
    this.selectPolicy,
    this.stabilizationWindowSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': ?policies == null ? null : pulumi.Input.encodeList<HPAScalingPolicyAutoscalingV2beta2, Map<String, dynamic>>(policies!, (value) => value.toMap()),
      'selectPolicy': ?selectPolicy,
      'stabilizationWindowSeconds': ?stabilizationWindowSeconds,
    };
  }

  factory HPAScalingRulesAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return HPAScalingRulesAutoscalingV2beta2(
      policies: map['policies'] == null ? null : pulumi.Input.decodeList<HPAScalingPolicyAutoscalingV2beta2>(map['policies'], (value) => HPAScalingPolicyAutoscalingV2beta2.fromMap((value as Map).cast<String, dynamic>())),
      selectPolicy: map['selectPolicy'] == null ? null : map['selectPolicy'] as String,
      stabilizationWindowSeconds: map['stabilizationWindowSeconds'] == null ? null : map['stabilizationWindowSeconds'] as int,
    );
  }
}

