// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iprule_response.dart';
import 'resource_access_rule_response.dart';
import 'virtual_network_rule_response.dart';

/// Network rule set
class NetworkRuleSetResponse {
  /// Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  final pulumi.Input<String>? bypass;
  /// Specifies the default action of allow or deny when no other rules match.
  final pulumi.Input<String> defaultAction;
  /// Sets the IP ACL rules
  final pulumi.Input<List<IPRuleResponse>>? ipRules;
  /// Sets the resource access rules
  final pulumi.Input<List<ResourceAccessRuleResponse>>? resourceAccessRules;
  /// Sets the virtual network rules
  final pulumi.Input<List<VirtualNetworkRuleResponse>>? virtualNetworkRules;

  /// Creates a new [NetworkRuleSetResponse].
  /// [bypass] Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, "Logging, Metrics"), or None to bypass none of those traffics.
  /// [defaultAction] Specifies the default action of allow or deny when no other rules match.
  /// [ipRules] Sets the IP ACL rules
  /// [resourceAccessRules] Sets the resource access rules
  /// [virtualNetworkRules] Sets the virtual network rules
  const NetworkRuleSetResponse({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.resourceAccessRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IPRuleResponse>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IPRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceAccessRules': ?pulumi.Input.mapOptionalInputValue<List<ResourceAccessRuleResponse>, List<Map<String, dynamic>>>(resourceAccessRules, (value) => pulumi.Input.encodeList<ResourceAccessRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkRuleResponse>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return NetworkRuleSetResponse(
      bypass: (() { final guardedValue = map['bypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPRuleResponse>(guardedValue, (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceAccessRules: (() { final guardedValue = map['resourceAccessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceAccessRuleResponse>(guardedValue, (value) => ResourceAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkRuleResponse>(guardedValue, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

