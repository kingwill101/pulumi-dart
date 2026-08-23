// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies_firewall_association_domain.dart';

class FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation {
  /// One or more `domain` blocks as defined below.
  ///
  /// &gt; **Note:** The number of `domain` blocks that may be included in the configuration varies depending on the `skuName` field of the linked Front Door Profile. The `Standard_AzureFrontDoor` sku may contain up to 100 `domain` blocks and a `Premium_AzureFrontDoor` sku may contain up to 500 `domain` blocks.
  final pulumi.Input<List<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain>> domains;
  /// The list of paths to match for this firewall policy. The only possible value is `/*`. Changing this forces a new resource to be created.
  final pulumi.Input<String> patternsToMatch;

  /// Creates a new [FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation].
  /// [domains] One or more `domain` blocks as defined below.
  /// [patternsToMatch] The list of paths to match for this firewall policy. The only possible value is `/*`. Changing this forces a new resource to be created.
  const FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation({
    required this.domains,
    required this.patternsToMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': pulumi.Input.mapInputValue<List<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'patternsToMatch': patternsToMatch,
    };
  }

  factory FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation(
      domains: pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain>(map['domains']!, (value) => FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain.fromMap((value as Map).cast<String, dynamic>()))),
      patternsToMatch: pulumi.Input.fromValue(map['patternsToMatch'] as String),
    );
  }
}
