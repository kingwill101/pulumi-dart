// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies.dart';

/// Input properties used for looking up and filtering FrontdoorSecurityPolicy resources.
class FrontdoorSecurityPolicyState {
  /// The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created.
  final pulumi.Input<String>? name;
  /// An `security_policies` block as defined below.
  final pulumi.Input<FrontdoorSecurityPolicySecurityPolicies>? securityPolicies;

  /// Creates a new [FrontdoorSecurityPolicyState].
  /// [cdnFrontdoorProfileId] The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new Front Door Security Policy to be created.
  /// [name] The name which should be used for this Front Door Security Policy. Possible values must not be an empty string. Changing this forces a new Front Door Security Policy to be created.
  /// [securityPolicies] An `security_policies` block as defined below.
  FrontdoorSecurityPolicyState({
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
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] == null ? null : (map['cdnFrontdoorProfileId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      securityPolicies: map['securityPolicies'] == null ? null : (FrontdoorSecurityPolicySecurityPolicies.fromMap((map['securityPolicies'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

