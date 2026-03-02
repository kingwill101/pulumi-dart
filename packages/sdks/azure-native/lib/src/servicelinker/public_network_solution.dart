// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_rules.dart';

/// Indicates public network solution, include firewall rules
class PublicNetworkSolution {
  /// Optional. Indicates public network solution. If enable, enable public network access of target service with best try. Default is enable. If optOut, opt out public network access configuration.
  final pulumi.Input<String>? action;
  /// Indicates whether to clean up previous operation(such as firewall rules) when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Describe firewall rules of target service to make sure source application could connect to the target.
  final pulumi.Input<FirewallRules>? firewallRules;

  /// Creates a new [PublicNetworkSolution].
  /// [action] Optional. Indicates public network solution. If enable, enable public network access of target service with best try. Default is enable. If optOut, opt out public network access configuration.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation(such as firewall rules) when Linker is updating or deleting
  /// [firewallRules] Describe firewall rules of target service to make sure source application could connect to the target.
  PublicNetworkSolution({
    this.action,
    this.deleteOrUpdateBehavior,
    this.firewallRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'firewallRules': ?pulumi.Input.mapOptionalInputValue<FirewallRules, Map<String, dynamic>>(firewallRules, (value) => value.toMap()),
    };
  }

  factory PublicNetworkSolution.fromMap(Map<String, dynamic> map) {
    return PublicNetworkSolution(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior']! as String).input(),
      firewallRules: map['firewallRules'] == null ? null : (FirewallRules.fromMap((map['firewallRules']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

