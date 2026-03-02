// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IoTHubNetworkRuleSetIpRule {
  /// The desired action for requests captured by this rule. Possible values are `Allow`. Defaults to `Allow`.
  final pulumi.Input<String>? action;
  /// The IP address range in CIDR notation for the ip rule.
  final pulumi.Input<String> ipMask;
  /// The name of the ip rule.
  final pulumi.Input<String> name;

  /// Creates a new [IoTHubNetworkRuleSetIpRule].
  /// [action] The desired action for requests captured by this rule. Possible values are `Allow`. Defaults to `Allow`.
  /// [ipMask] The IP address range in CIDR notation for the ip rule.
  /// [name] The name of the ip rule.
  IoTHubNetworkRuleSetIpRule({
    this.action,
    required this.ipMask,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ipMask,
      'name': name,
    };
  }

  factory IoTHubNetworkRuleSetIpRule.fromMap(Map<String, dynamic> map) {
    return IoTHubNetworkRuleSetIpRule(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      ipMask: (map['ipMask'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

