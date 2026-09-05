// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_security_policy_security_policies.dart';

/// {@template pulumi_cdn_frontdoor_security_policy_frontdoor_security_policy_args_doc}
/// The set of arguments for FrontdoorSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_security_policy_frontdoor_security_policy_args_doc}
class FrontdoorSecurityPolicyArgs {
  /// The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Security Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `securityPolicies` block as defined below.
  final pulumi.Input<FrontdoorSecurityPolicySecurityPolicies> securityPolicies;

  /// Creates a new [FrontdoorSecurityPolicyArgs].
  /// [cdnFrontdoorProfileId] The Front Door Profile Resource Id that is linked to this Front Door Security Policy. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Front Door Security Policy. Changing this forces a new resource to be created.
  /// [securityPolicies] A `securityPolicies` block as defined below.
  const FrontdoorSecurityPolicyArgs({
    required this.cdnFrontdoorProfileId,
    this.name,
    required this.securityPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'name': ?name,
      'securityPolicies': pulumi.Input.mapInputValue<FrontdoorSecurityPolicySecurityPolicies, Map<String, dynamic>>(securityPolicies, (value) => value.toMap()),
    };
  }

  factory FrontdoorSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecurityPolicyArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(map['cdnFrontdoorProfileId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicies: pulumi.Input.fromValue(FrontdoorSecurityPolicySecurityPolicies.fromMap((map['securityPolicies']! as Map).cast<String, dynamic>())),
    );
  }
}
