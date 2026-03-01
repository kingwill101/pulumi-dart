// ignore_for_file: unused_element, unnecessary_cast

import 'frontdoor_security_policy_security_policies_firewall.dart';

class FrontdoorSecurityPolicySecurityPolicies {
  /// An `firewall` block as defined below.
  final FrontdoorSecurityPolicySecurityPoliciesFirewall firewall;

  /// Creates a new [FrontdoorSecurityPolicySecurityPolicies].
  /// [firewall] An `firewall` block as defined below.
  FrontdoorSecurityPolicySecurityPolicies({
    required this.firewall,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewall': firewall.toMap(),
    };
  }

  factory FrontdoorSecurityPolicySecurityPolicies.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicySecurityPolicies(
      firewall: FrontdoorSecurityPolicySecurityPoliciesFirewall.fromMap((map['firewall'] as Map).cast<String, dynamic>()),
    );
  }
}

