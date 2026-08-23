// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_custom_policy.dart';
import 'backend_service_locality_load_balancing_policy_config_policy.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfig {
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy>? customPolicy;
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicy>? policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfig].
  /// [customPolicy] Optional.
  /// [policy] Optional.
  const BackendServiceLocalityLoadBalancingPolicyConfig({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy, Map<String, dynamic>>(customPolicy, (value) => value.toMap()),
      'policy': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLoadBalancingPolicyConfigPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfig.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfig(
      customPolicy: (() { final guardedValue = map['customPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceLocalityLoadBalancingPolicyConfigPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
