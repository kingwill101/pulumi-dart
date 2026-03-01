// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy.dart';
import 'backend_service_locality_load_balancing_policy_config_policy.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfig {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy? customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicy? policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfig].
  /// [customPolicy] Optional.
  /// [policy] Optional.
  BackendServiceLocalityLoadBalancingPolicyConfig({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?customPolicy == null ? null : customPolicy!.toMap(),
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfig.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfig(
      customPolicy: map['customPolicy'] == null ? null : BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy.fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null ? null : BackendServiceLocalityLoadBalancingPolicyConfigPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

