// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_policy_connection_rules_rdp.dart';
import 'zero_trust_access_application_policy_connection_rules_ssh.dart';

class ZeroTrustAccessApplicationPolicyConnectionRules {
  /// The RDP-specific rules that define clipboard behavior for RDP connections.
  final pulumi.Input<ZeroTrustAccessApplicationPolicyConnectionRulesRdp?>? rdp;
  /// The SSH-specific rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<ZeroTrustAccessApplicationPolicyConnectionRulesSsh?>? ssh;

  /// Creates a new [ZeroTrustAccessApplicationPolicyConnectionRules].
  /// [rdp] The RDP-specific rules that define clipboard behavior for RDP connections.
  /// [ssh] The SSH-specific rules that define how users may connect to the targets secured by your application.
  const ZeroTrustAccessApplicationPolicyConnectionRules({
    this.rdp,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyConnectionRulesRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
      'ssh': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationPolicyConnectionRulesSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyConnectionRules(
      rdp: (() { final guardedValue = map['rdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyConnectionRulesRdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationPolicyConnectionRulesSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
