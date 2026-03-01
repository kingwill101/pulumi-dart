// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies_firewall_association_domain.dart';

class FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation {
  /// One or more `domain` blocks as defined below.
  final List<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain> domains;
  /// The list of paths to match for this firewall policy. Possible value includes `/*`. Changing this forces a new Front Door Security Policy to be created.
  final String patternsToMatch;

  /// Creates a new [FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation].
  /// [domains] One or more `domain` blocks as defined below.
  /// [patternsToMatch] The list of paths to match for this firewall policy. Possible value includes `/*`. Changing this forces a new Front Door Security Policy to be created.
  FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation({
    required this.domains,
    required this.patternsToMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.encodeList<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'patternsToMatch': patternsToMatch,
    };
  }

  factory FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation(
      domains: pulumi.Input.decodeList<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain>(map['domains'], (value) => FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain.fromMap((value as Map).cast<String, dynamic>())),
      patternsToMatch: map['patternsToMatch'] as String,
    );
  }
}

