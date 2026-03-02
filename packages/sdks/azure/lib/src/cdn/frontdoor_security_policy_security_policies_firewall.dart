// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies_firewall_association.dart';

class FrontdoorSecurityPolicySecurityPoliciesFirewall {
  /// An `association` block as defined below.
  final pulumi.Input<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation> association;
  /// The Resource Id of the Front Door Firewall Policy that should be linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
  final pulumi.Input<String> cdnFrontdoorFirewallPolicyId;

  /// Creates a new [FrontdoorSecurityPolicySecurityPoliciesFirewall].
  /// [association] An `association` block as defined below.
  /// [cdnFrontdoorFirewallPolicyId] The Resource Id of the Front Door Firewall Policy that should be linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
  FrontdoorSecurityPolicySecurityPoliciesFirewall({
    required this.association,
    required this.cdnFrontdoorFirewallPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'association': pulumi.Input.mapInputValue<FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation, Map<String, dynamic>>(association, (value) => value.toMap()),
      'cdnFrontdoorFirewallPolicyId': cdnFrontdoorFirewallPolicyId,
    };
  }

  factory FrontdoorSecurityPolicySecurityPoliciesFirewall.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicySecurityPoliciesFirewall(
      association: (FrontdoorSecurityPolicySecurityPoliciesFirewallAssociation.fromMap((map['association'] as Map).cast<String, dynamic>())).input(),
      cdnFrontdoorFirewallPolicyId: (map['cdnFrontdoorFirewallPolicyId'] as String).input(),
    );
  }
}

