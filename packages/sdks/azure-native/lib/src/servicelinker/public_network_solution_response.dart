// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_rules_response.dart';

/// Indicates public network solution, include firewall rules
class PublicNetworkSolutionResponse {
  /// Optional. Indicates public network solution. If enable, enable public network access of target service with best try. Default is enable. If optOut, opt out public network access configuration.
  final String? action;
  /// Indicates whether to clean up previous operation(such as firewall rules) when Linker is updating or deleting
  final String? deleteOrUpdateBehavior;
  /// Describe firewall rules of target service to make sure source application could connect to the target.
  final FirewallRulesResponse? firewallRules;

  /// Creates a new [PublicNetworkSolutionResponse].
  /// [action] Optional. Indicates public network solution. If enable, enable public network access of target service with best try. Default is enable. If optOut, opt out public network access configuration.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation(such as firewall rules) when Linker is updating or deleting
  /// [firewallRules] Describe firewall rules of target service to make sure source application could connect to the target.
  PublicNetworkSolutionResponse({
    this.action,
    this.deleteOrUpdateBehavior,
    this.firewallRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'firewallRules': ?firewallRules == null ? null : firewallRules!.toMap(),
    };
  }

  factory PublicNetworkSolutionResponse.fromMap(Map<String, dynamic> map) {
    return PublicNetworkSolutionResponse(
      action: map['action'] == null ? null : map['action'] as String,
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : map['deleteOrUpdateBehavior'] as String,
      firewallRules: map['firewallRules'] == null ? null : FirewallRulesResponse.fromMap((map['firewallRules'] as Map).cast<String, dynamic>()),
    );
  }
}

