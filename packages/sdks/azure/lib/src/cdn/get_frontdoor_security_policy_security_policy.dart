// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_security_policy_security_policy_firewall.dart';

class GetFrontdoorSecurityPolicySecurityPolicy {
  /// A `firewall` block as defined below.
  final pulumi.Input<List<GetFrontdoorSecurityPolicySecurityPolicyFirewall>> firewalls;

  /// Creates a new [GetFrontdoorSecurityPolicySecurityPolicy].
  /// [firewalls] A `firewall` block as defined below.
  const GetFrontdoorSecurityPolicySecurityPolicy({
    required this.firewalls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewalls': pulumi.Input.mapInputValue<List<GetFrontdoorSecurityPolicySecurityPolicyFirewall>, List<Map<String, dynamic>>>(firewalls, (value) => pulumi.Input.encodeList<GetFrontdoorSecurityPolicySecurityPolicyFirewall, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFrontdoorSecurityPolicySecurityPolicy.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecurityPolicySecurityPolicy(
      firewalls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorSecurityPolicySecurityPolicyFirewall>(map['firewalls']!, (value) => GetFrontdoorSecurityPolicySecurityPolicyFirewall.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
