// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain {
  /// Is the Front Door Custom Domain or Front Door Endpoint active?
  final pulumi.Input<bool> active;
  /// The ID of the Front Door Custom Domain or Front Door Endpoint associated with this Front Door Security Policy.
  final pulumi.Input<String> cdnFrontdoorDomainId;

  /// Creates a new [GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain].
  /// [active] Is the Front Door Custom Domain or Front Door Endpoint active?
  /// [cdnFrontdoorDomainId] The ID of the Front Door Custom Domain or Front Door Endpoint associated with this Front Door Security Policy.
  const GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain({
    required this.active,
    required this.cdnFrontdoorDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'cdnFrontdoorDomainId': cdnFrontdoorDomainId,
    };
  }

  factory GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicySecurityPolicyFirewallAssociationDomain(
      active: pulumi.Input.fromValue(map['active'] as bool),
      cdnFrontdoorDomainId: pulumi.Input.fromValue(map['cdnFrontdoorDomainId'] as String),
    );
  }
}
