// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountNetworkProfileNodeManagementAccessIpRule {
  /// Specifies the action of the ip rule. The only possible value is `Allow`. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The CIDR block from which requests will match the rule.
  final pulumi.Input<String> ipRange;

  /// Creates a new [AccountNetworkProfileNodeManagementAccessIpRule].
  /// [action] Specifies the action of the ip rule. The only possible value is `Allow`. Defaults to `Allow`.
  /// [ipRange] The CIDR block from which requests will match the rule.
  AccountNetworkProfileNodeManagementAccessIpRule({
    this.action,
    required this.ipRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipRange': ipRange,
    };
  }

  factory AccountNetworkProfileNodeManagementAccessIpRule.fromMap(Map<String, dynamic> map) {
    return AccountNetworkProfileNodeManagementAccessIpRule(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      ipRange: (map['ipRange'] as String).input(),
    );
  }
}

