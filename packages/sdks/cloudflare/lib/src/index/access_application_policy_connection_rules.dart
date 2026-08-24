// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_policy_connection_rules_rdp.dart';
import 'access_application_policy_connection_rules_ssh.dart';

class AccessApplicationPolicyConnectionRules {
  /// The RDP-specific rules that define clipboard behavior for RDP connections.
  final pulumi.Input<AccessApplicationPolicyConnectionRulesRdp?>? rdp;
  /// The SSH-specific rules that define how users may connect to the targets secured by your application.
  final pulumi.Input<AccessApplicationPolicyConnectionRulesSsh?>? ssh;

  /// Creates a new [AccessApplicationPolicyConnectionRules].
  /// [rdp] The RDP-specific rules that define clipboard behavior for RDP connections.
  /// [ssh] The SSH-specific rules that define how users may connect to the targets secured by your application.
  const AccessApplicationPolicyConnectionRules({
    this.rdp,
    this.ssh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rdp': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyConnectionRulesRdp, Map<String, dynamic>>(rdp, (value) => value.toMap()),
      'ssh': ?pulumi.Input.mapOptionalInputValue<AccessApplicationPolicyConnectionRulesSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
    };
  }

  factory AccessApplicationPolicyConnectionRules.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyConnectionRules(
      rdp: (() { final guardedValue = map['rdp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyConnectionRulesRdp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssh: (() { final guardedValue = map['ssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationPolicyConnectionRulesSsh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
