// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';

/// Virtual Network rule.
class VirtualNetworkRule {
  /// The action of virtual network rule.
  final pulumi.Input<Action>? action;
  /// Gets the state of virtual network rule.
  final pulumi.Input<String>? state;
  /// Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}.
  final pulumi.Input<String> virtualNetworkResourceId;

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
      'action': ?pulumi.Input.mapOptionalInputValue<Action, String>(action, (value) => value.value),
      'state': ?state,
      'virtualNetworkResourceId': virtualNetworkResourceId,
    };
  }

  factory VirtualNetworkRule.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRule(
      action: map['action'] == null ? null : (Action.fromValue(map['action'] as String)).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      virtualNetworkResourceId: (map['virtualNetworkResourceId'] as String).input(),
    );
  }
}

