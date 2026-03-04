// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1 {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final pulumi.Input<String> name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1].
  /// [name] The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
