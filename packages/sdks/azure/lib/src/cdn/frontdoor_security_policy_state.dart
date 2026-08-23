// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies.dart';

/// Input properties used for looking up and filtering FrontdoorSecurityPolicy resources.
class FrontdoorSecurityPolicyState {
  /// The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Security Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `securityPolicies` block as defined below.
  final pulumi.Input<FrontdoorSecurityPolicySecurityPolicies>? securityPolicies;

  /// Creates a new [FrontdoorSecurityPolicyState].
  /// [cdnFrontdoorProfileId] The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Front Door Security Policy. Changing this forces a new resource to be created.
  /// [securityPolicies] A `securityPolicies` block as defined below.
  const FrontdoorSecurityPolicyState({
    this.cdnFrontdoorProfileId,
    this.name,
    this.securityPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'name': ?name,
      'securityPolicies': ?pulumi.Input.mapOptionalInputValue<FrontdoorSecurityPolicySecurityPolicies, Map<String, dynamic>>(securityPolicies, (value) => value.toMap()),
    };
  }

  factory FrontdoorSecurityPolicyState.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicyState(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicies: (() { final guardedValue = map['securityPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorSecurityPolicySecurityPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
