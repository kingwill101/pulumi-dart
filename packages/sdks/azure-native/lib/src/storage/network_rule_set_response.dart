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
  NetworkRuleSetResponse({
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
      bypass: map['bypass'] == null ? null : (map['bypass']! as String).input(),
      defaultAction: (map['defaultAction'] as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IPRuleResponse>(map['ipRules']!, (value) => IPRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceAccessRules: map['resourceAccessRules'] == null ? null : (pulumi.Input.decodeList<ResourceAccessRuleResponse>(map['resourceAccessRules']!, (value) => ResourceAccessRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules']!, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

