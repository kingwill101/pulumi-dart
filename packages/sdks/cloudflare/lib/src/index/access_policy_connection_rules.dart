// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_connection_rules_rdp.dart';

class AccessPolicyConnectionRules {
  /// The RDP-specific rules that define clipboard behavior for RDP connections.
  final pulumi.Input<AccessPolicyConnectionRulesRdp?>? rdp;

  /// Creates a new [AccessPolicyConnectionRules].
  /// [rdp] The RDP-specific rules that define clipboard behavior for RDP connections.
  const AccessPolicyConnectionRules({
    this.rdp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': ?pulumi.Input.mapOptionalInputValue<AccessPolicyConnectionRulesRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
    };
  }

  factory AccessPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return AccessPolicyConnectionRules(
      rdp: (() { final guardedValue = map['rdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyConnectionRulesRdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
