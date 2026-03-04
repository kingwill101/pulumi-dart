// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_load_balancing_policy_config_policy_name.dart';

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicy {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final pulumi.Input<BackendServiceLocalityLoadBalancingPolicyConfigPolicyName>?
  name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigPolicy].
  /// [name] The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  BackendServiceLocalityLoadBalancingPolicyConfigPolicy({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name':
          ?pulumi.Input.mapOptionalInputValue<
            BackendServiceLocalityLoadBalancingPolicyConfigPolicyName,
            String
          >(name, (value) => value.wireValue),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicy(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendServiceLocalityLoadBalancingPolicyConfigPolicyName.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
