// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_custom_policy_response_compute_beta.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response_compute_beta.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta {
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeBeta> customPolicy;
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta> policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta].
  /// [customPolicy] Required.
  /// [policy] Required.
  const BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': pulumi.Input.mapInputValue<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeBeta, Map<String, dynamic>>(customPolicy, (value) => value.toMap()),
      'policy': pulumi.Input.mapInputValue<BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta(
      customPolicy: pulumi.Input.fromValue(BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeBeta.fromMap((map['customPolicy']! as Map).cast<String, dynamic>())),
      policy: pulumi.Input.fromValue(BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta.fromMap((map['policy']! as Map).cast<String, dynamic>())),
    );
  }
}

