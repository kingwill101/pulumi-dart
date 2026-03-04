// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain {
  /// Is the Front Door Custom Domain/Endpoint activated?
  final pulumi.Input<bool>? active;

  /// The Resource Id of the **Front Door Custom Domain** or **Front Door Endpoint** that should be bound to this Front Door Security Policy.
  final pulumi.Input<String> cdnFrontdoorDomainId;

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

  factory FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrontdoorSecurityPolicySecurityPoliciesFirewallAssociationDomain(
      active: (() {
        final guardedValue = map['active'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cdnFrontdoorDomainId: pulumi.Input.fromValue(
        map['cdnFrontdoorDomainId'] as String,
      ),
    );
  }
}
