// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain {
  /// Is the Front Door Custom Domain/Endpoint activated?
  final bool? active;
  /// The Resource Id of the **Front Door Custom Domain** or **Front Door Endpoint** that should be bound to this Front Door Security Policy.
  final String cdnFrontdoorDomainId;

  /// Creates a new [FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain].
  /// [active] Is the Front Door Custom Domain/Endpoint activated?
  /// [cdnFrontdoorDomainId] The Resource Id of the **Front Door Custom Domain** or **Front Door Endpoint** that should be bound to this Front Door Security Policy.
  FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain({
    this.active,
    required this.cdnFrontdoorDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'cdnFrontdoorDomainId': cdnFrontdoorDomainId,
    };
  }

  factory FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain(
      active: map['active'] == null ? null : map['active'] as bool,
      cdnFrontdoorDomainId: map['cdnFrontdoorDomainId'] as String,
    );
  }
}

