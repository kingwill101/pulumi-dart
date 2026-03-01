// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_action.dart';
import 'iprule.dart';
import 'resource_access_rule.dart';
import 'virtual_network_rule.dart';

/// Network rule set
class NetworkRuleSet {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  final String? bypass;
  /// Specifies the default action of allow or deny when no other rules match.
  final DefaultAction defaultAction;
  /// Sets the IP ACL rules
  final List<IPRule>? ipRules;
  /// Sets the resource access rules
  final List<ResourceAccessRule>? resourceAccessRules;
  /// Sets the virtual network rules
  final List<VirtualNetworkRule>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSet].
  /// [bypass] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match.
  /// [ipRules] Sets the IP ACL rules
  /// [resourceAccessRules] Sets the resource access rules
  /// [virtualNetworkRules] Sets the virtual network rules
  NetworkRuleSet({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.resourceAccessRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': defaultAction.value,
      'ipRules': ?ipRules == null ? null : pulumi.Input.encodeList<IPRule, Map<String, dynamic>>(ipRules!, (value) => value.toMap()),
      'resourceAccessRules': ?resourceAccessRules == null ? null : pulumi.Input.encodeList<ResourceAccessRule, Map<String, dynamic>>(resourceAccessRules!, (value) => value.toMap()),
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<VirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory NetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSet(
      bypass: map['bypass'] == null ? null : map['bypass'] as String,
      defaultAction: DefaultAction.fromValue(map['defaultAction'] as String),
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IPRule>(map['ipRules'], (value) => IPRule.fromMap((value as Map).cast<String, dynamic>())),
      resourceAccessRules: map['resourceAccessRules'] == null ? null : pulumi.Input.decodeList<ResourceAccessRule>(map['resourceAccessRules'], (value) => ResourceAccessRule.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkRule>(map['virtualNetworkRules'], (value) => VirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

