// ignore_for_file: unused_element, unnecessary_cast

import 'action.dart';

/// Virtual Network rule.
class VirtualNetworkRule {
  /// The action of virtual network rule.
  final Action? action;
  /// Gets the state of virtual network rule.
  final String? state;
  /// Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  final String virtualNetworkResourceId;

  /// Creates a new [VirtualNetworkRule].
  /// [action] The action of virtual network rule.
  /// [state] Gets the state of virtual network rule.
  /// [virtualNetworkResourceId] Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  VirtualNetworkRule({
    this.action,
    this.state,
    required this.virtualNetworkResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.value,
      'state': ?state,
      'virtualNetworkResourceId': virtualNetworkResourceId,
    };
  }

  factory VirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRule(
      action: map['action'] == null ? null : Action.fromValue(map['action'] as String),
      state: map['state'] == null ? null : map['state'] as String,
      virtualNetworkResourceId: map['virtualNetworkResourceId'] as String,
    );
  }
}

