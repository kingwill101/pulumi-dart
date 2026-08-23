// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_locality_lb_policy_custom_policy.dart';
import 'get_backend_service_locality_lb_policy_policy.dart';

class GetBackendServiceLocalityLbPolicy {
  /// The configuration for a custom policy implemented by the user and
  /// deployed with the client.
  final pulumi.Input<List<GetBackendServiceLocalityLbPolicyCustomPolicy>> customPolicies;
  /// The configuration for a built-in load balancing policy.
  final pulumi.Input<List<GetBackendServiceLocalityLbPolicyPolicy>> policies;

  /// Creates a new [GetBackendServiceLocalityLbPolicy].
  /// [customPolicies] The configuration for a custom policy implemented by the user and
  /// [policies] The configuration for a built-in load balancing policy.
  const GetBackendServiceLocalityLbPolicy({
    required this.customPolicies,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicies': pulumi.Input.mapInputValue<List<GetBackendServiceLocalityLbPolicyCustomPolicy>, List<Map<String, dynamic>>>(customPolicies, (value) => pulumi.Input.encodeList<GetBackendServiceLocalityLbPolicyCustomPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policies': pulumi.Input.mapInputValue<List<GetBackendServiceLocalityLbPolicyPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<GetBackendServiceLocalityLbPolicyPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBackendServiceLocalityLbPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceLocalityLbPolicy(
      customPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackendServiceLocalityLbPolicyCustomPolicy>(map['customPolicies']!, (value) => GetBackendServiceLocalityLbPolicyCustomPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      policies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackendServiceLocalityLbPolicyPolicy>(map['policies']!, (value) => GetBackendServiceLocalityLbPolicyPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
