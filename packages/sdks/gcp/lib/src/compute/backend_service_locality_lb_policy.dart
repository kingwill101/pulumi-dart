// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_locality_lb_policy_custom_policy.dart';
import 'backend_service_locality_lb_policy_policy.dart';

class BackendServiceLocalityLbPolicy {
  /// The configuration for a custom policy implemented by the user and
  /// deployed with the client.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceLocalityLbPolicyCustomPolicy>? customPolicy;

  /// The configuration for a built-in load balancing policy.
  /// Structure is documented below.
  final pulumi.Input<BackendServiceLocalityLbPolicyPolicy>? policy;

  /// Creates a new [BackendServiceLocalityLbPolicy].
  /// [customPolicy] The configuration for a custom policy implemented by the user and
  /// [policy] The configuration for a built-in load balancing policy.
  BackendServiceLocalityLbPolicy({this.customPolicy, this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            BackendServiceLocalityLbPolicyCustomPolicy,
            Map<String, dynamic>
          >(customPolicy, (value) => value.toMap()),
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            BackendServiceLocalityLbPolicyPolicy,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
    };
  }

  factory BackendServiceLocalityLbPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLbPolicy(
      customPolicy: (() {
        final guardedValue = map['customPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendServiceLocalityLbPolicyCustomPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackendServiceLocalityLbPolicyPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
