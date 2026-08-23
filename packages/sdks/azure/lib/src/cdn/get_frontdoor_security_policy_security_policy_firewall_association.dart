// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_security_policy_security_policy_firewall_association_domain.dart';

class GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation {
  /// A `domain` block as defined below.
  final pulumi.Input<List<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain>> domains;
  /// The paths associated with this firewall policy.
  final pulumi.Input<List<String>> patternsToMatches;

  /// Creates a new [GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation].
  /// [domains] A `domain` block as defined below.
  /// [patternsToMatches] The paths associated with this firewall policy.
  const GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation({
    required this.domains,
    required this.patternsToMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.mapInputValue<List<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'patternsToMatches': patternsToMatches,
    };
  }

  factory GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation(
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain>(map['domains']!, (value) => GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain.fromMap((value as Map).cast<String, dynamic>()))),
      patternsToMatches: pulumi.Input.fromValue((map['patternsToMatches'] as List).cast<String>()),
    );
  }
}
