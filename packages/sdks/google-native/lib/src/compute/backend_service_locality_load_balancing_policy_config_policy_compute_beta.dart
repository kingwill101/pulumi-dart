// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_policy_name_compute_beta.dart';

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicyNameComputeBeta>? name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta].
  /// [name] The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?pulumi.Input.mapOptionalInputValue<BackendServiceLocalityLoadBalancingPolicyConfigPolicyNameComputeBeta, String>(name, (value) => value.value),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta(
      name: map['name'] == null ? null : (BackendServiceLocalityLoadBalancingPolicyConfigPolicyNameComputeBeta.fromValue(map['name']! as String)).input(),
    );
  }
}

