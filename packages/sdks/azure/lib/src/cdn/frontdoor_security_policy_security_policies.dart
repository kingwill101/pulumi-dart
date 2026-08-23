// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies_firewall.dart';

class FrontdoorSecurityPolicySecurityPolicies {
  /// A `firewall` block as defined below.
  final pulumi.Input<FrontdoorSecurityPolicySecurityPoliciesFirewall> firewall;

  /// Creates a new [FrontdoorSecurityPolicySecurityPolicies].
  /// [firewall] A `firewall` block as defined below.
  const FrontdoorSecurityPolicySecurityPolicies({
    required this.firewall,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewall': pulumi.Input.mapInputValue<FrontdoorSecurityPolicySecurityPoliciesFirewall, Map<String, dynamic>>(firewall, (value) => value.toMap()),
    };
  }

  factory FrontdoorSecurityPolicySecurityPolicies.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicySecurityPolicies(
      firewall: pulumi.Input.fromValue(FrontdoorSecurityPolicySecurityPoliciesFirewall.fromMap((map['firewall']! as Map).cast<String, dynamic>())),
    );
  }
}
