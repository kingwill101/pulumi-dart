// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_custom_policy_response.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponse {
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse> customPolicy;
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse> policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigResponse].
  /// [customPolicy] Required.
  /// [policy] Required.
  BackendServiceLocalityLoadBalancingPolicyConfigResponse({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': pulumi.Input.mapInputValue<BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse, Map<String, dynamic>>(customPolicy, (value) => value.toMap()),
      'policy': pulumi.Input.mapInputValue<BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponse.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponse(
      customPolicy: (BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse.fromMap((map['customPolicy'] as Map).cast<String, dynamic>())).input(),
      policy: (BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

