// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IotHubDpsIpFilterRule {
  /// The desired action for requests captured by this rule. Possible values are `Accept`, `Reject`
  final pulumi.Input<String> action;
  /// The IP address range in CIDR notation for the rule.
  final pulumi.Input<String> ipMask;
  /// The name of the filter.
  final pulumi.Input<String> name;
  /// Target for requests captured by this rule. Possible values are `all`, `deviceApi` and `serviceApi`.
  final pulumi.Input<String>? target;

  /// Creates a new [IotHubDpsIpFilterRule].
  /// [action] The desired action for requests captured by this rule. Possible values are `Accept`, `Reject`
  /// [ipMask] The IP address range in CIDR notation for the rule.
  /// [name] The name of the filter.
  /// [target] Target for requests captured by this rule. Possible values are `all`, `deviceApi` and `serviceApi`.
  IotHubDpsIpFilterRule({
    required this.action,
    required this.ipMask,
    required this.name,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ipMask': ipMask,
      'name': name,
      'target': ?target,
    };
  }

  factory IotHubDpsIpFilterRule.fromMap(Map<String, dynamic> map) {
    return IotHubDpsIpFilterRule(
      action: (map['action'] as String).input(),
      ipMask: (map['ipMask'] as String).input(),
      name: (map['name'] as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

