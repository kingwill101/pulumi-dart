// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_policies_result_connection_rules_rdp.dart';

class GetZeroTrustAccessPoliciesResultConnectionRules {
  /// The RDP-specific rules that define clipboard behavior for RDP connections.
  final pulumi.Input<GetZeroTrustAccessPoliciesResultConnectionRulesRdp> rdp;

  /// Creates a new [GetZeroTrustAccessPoliciesResultConnectionRules].
  /// [rdp] The RDP-specific rules that define clipboard behavior for RDP connections.
  const GetZeroTrustAccessPoliciesResultConnectionRules({
    required this.rdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': pulumi.Input.mapInputValue<GetZeroTrustAccessPoliciesResultConnectionRulesRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessPoliciesResultConnectionRules.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultConnectionRules(
      rdp: pulumi.Input.fromValue(GetZeroTrustAccessPoliciesResultConnectionRulesRdp.fromMap((map['rdp']! as Map).cast<String, dynamic>())),
    );
  }
}
