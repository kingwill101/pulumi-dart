// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_policy_connection_rules_rdp.dart';

class ZeroTrustAccessPolicyConnectionRules {
  /// The RDP-specific rules that define clipboard behavior for RDP connections.
  final pulumi.Input<ZeroTrustAccessPolicyConnectionRulesRdp?>? rdp;

  /// Creates a new [ZeroTrustAccessPolicyConnectionRules].
  /// [rdp] The RDP-specific rules that define clipboard behavior for RDP connections.
  const ZeroTrustAccessPolicyConnectionRules({
    this.rdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessPolicyConnectionRulesRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyConnectionRules(
      rdp: (() { final guardedValue = map['rdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessPolicyConnectionRulesRdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
