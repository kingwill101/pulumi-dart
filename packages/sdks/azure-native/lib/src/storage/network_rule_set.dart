// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_action.dart';
import 'iprule.dart';
import 'resource_access_rule.dart';
import 'virtual_network_rule.dart';

/// Network rule set
class NetworkRuleSet {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  final pulumi.Input<String>? bypass;
  /// Specifies the default action of allow or deny when no other rules match.
  final pulumi.Input<DefaultAction> defaultAction;
  /// Sets the IP ACL rules
  final pulumi.Input<List<IPRule>>? ipRules;
  /// Sets the resource access rules
  final pulumi.Input<List<ResourceAccessRule>>? resourceAccessRules;
  /// Sets the virtual network rules
  final pulumi.Input<List<VirtualNetworkRule>>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSet].
  /// [bypass] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match.
  /// [ipRules] Sets the IP ACL rules
  /// [resourceAccessRules] Sets the resource access rules
  /// [virtualNetworkRules] Sets the virtual network rules
  const NetworkRuleSet({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.resourceAccessRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': pulumi.Input.mapInputValue<DefaultAction, String>(defaultAction, (value) => value.wireValue),
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceAccessRules': ?pulumi.Input.mapOptionalInputValue<List<ResourceAccessRule>, List<Map<String, dynamic>>>(resourceAccessRules, (value) => pulumi.Input.encodeList<ResourceAccessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkRule>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<VirtualNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: pulumi.Input.fromValue(DefaultAction.fromValue(map['defaultAction']! as String)),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRule>(guardedValue, (value) => IPRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceAccessRules: (() { final guardedValue = map['resourceAccessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceAccessRule>(guardedValue, (value) => ResourceAccessRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkRule>(guardedValue, (value) => VirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
