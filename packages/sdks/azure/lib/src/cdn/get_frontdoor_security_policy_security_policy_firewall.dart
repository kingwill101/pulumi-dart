// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_security_policy_security_policy_firewall_association.dart';

class GetFrontdoorSecurityPolicySecurityPolicyFirewall {
  /// An `association` block as defined below.
  final pulumi.Input<List<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation>> associations;
  /// The ID of the Front Door Firewall Policy associated with this Front Door Security Policy.
  final pulumi.Input<String> cdnFrontdoorFirewallPolicyId;

  /// Creates a new [GetFrontdoorSecurityPolicySecurityPolicyFirewall].
  /// [associations] An `association` block as defined below.
  /// [cdnFrontdoorFirewallPolicyId] The ID of the Front Door Firewall Policy associated with this Front Door Security Policy.
  const GetFrontdoorSecurityPolicySecurityPolicyFirewall({
    required this.associations,
    required this.cdnFrontdoorFirewallPolicyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.mapInputValue<List<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cdnFrontdoorFirewallPolicyId': cdnFrontdoorFirewallPolicyId,
    };
  }

  factory GetFrontdoorSecurityPolicySecurityPolicyFirewall.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicySecurityPolicyFirewall(
      associations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation>(map['associations']!, (value) => GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociation.fromMap((value as Map).cast<String, dynamic>()))),
      cdnFrontdoorFirewallPolicyId: pulumi.Input.fromValue(map['cdnFrontdoorFirewallPolicyId'] as String),
    );
  }
}
