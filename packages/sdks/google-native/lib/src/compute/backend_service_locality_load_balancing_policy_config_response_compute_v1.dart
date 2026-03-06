// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_custom_policy_response_compute_v1.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response_compute_v1.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1 {
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeV1> customPolicy;
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1> policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1].
  /// [customPolicy] Required.
  /// [policy] Required.
  const BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': pulumi.Input.mapInputValue<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeV1, Map<String, dynamic>>(customPolicy, (value) => value.toMap()),
      'policy': pulumi.Input.mapInputValue<BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1(
      customPolicy: pulumi.Input.fromValue(BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeV1.fromMap((map['customPolicy']! as Map).cast<String, dynamic>())),
      policy: pulumi.Input.fromValue(BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1.fromMap((map['policy']! as Map).cast<String, dynamic>())),
    );
  }
}

