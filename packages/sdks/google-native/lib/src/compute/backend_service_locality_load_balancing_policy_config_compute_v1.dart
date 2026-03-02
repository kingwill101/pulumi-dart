// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_custom_policy_compute_v1.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_compute_v1.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigComputeV1 {
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeV1>? customPolicy;
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1>? policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigComputeV1].
  /// [customPolicy] Optional.
  /// [policy] Optional.
  BackendServiceLocalityLoadBalancingPolicyConfigComputeV1({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeV1, Map<String, dynamic>>(customPolicy, (value) => value.toMap()),
      'policy': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigComputeV1(
      customPolicy: map['customPolicy'] == null ? null : (BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeV1.fromMap((map['customPolicy'] as Map).cast<String, dynamic>())).input(),
      policy: map['policy'] == null ? null : (BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

