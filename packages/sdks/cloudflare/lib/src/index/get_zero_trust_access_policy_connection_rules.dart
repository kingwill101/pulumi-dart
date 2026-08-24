// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policy_connection_rules_rdp.dart';

class GetZeroTrustAccessPolicyConnectionRules {
  /// The RDP-specific rules that define clipboard behavior for RDP connections.
  final pulumi.Input<GetZeroTrustAccessPolicyConnectionRulesRdp> rdp;

  /// Creates a new [GetZeroTrustAccessPolicyConnectionRules].
  /// [rdp] The RDP-specific rules that define clipboard behavior for RDP connections.
  const GetZeroTrustAccessPolicyConnectionRules({
    required this.rdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': pulumi.Input.mapInputValue<GetZeroTrustAccessPolicyConnectionRulesRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyConnectionRules(
      rdp: pulumi.Input.fromValue(GetZeroTrustAccessPolicyConnectionRulesRdp.fromMap((map['rdp']! as Map).cast<String, dynamic>())),
    );
  }
}
