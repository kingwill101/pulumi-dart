// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_network_acl_virtual_network_rule.dart';

class GetAccountNetworkAcl {
  /// Whether trusted Azure Services are allowed to access the service.
  final pulumi.Input<String> bypass;
  /// The Default Action to use when no rules match from `ip_rules` / `virtual_network_rules`.
  final pulumi.Input<String> defaultAction;
  /// One or more IP Addresses, or CIDR Blocks that are able to access the Cognitive Services Account.
  final pulumi.Input<List<String>> ipRules;
  /// A `virtual_network_rules` block as defined below.
  final pulumi.Input<List<GetAccountNetworkAclVirtualNetworkRule>> virtualNetworkRules;

  /// Creates a new [GetAccountNetworkAcl].
  /// [bypass] Whether trusted Azure Services are allowed to access the service.
  /// [defaultAction] The Default Action to use when no rules match from `ip_rules` / `virtual_network_rules`.
  /// [ipRules] One or more IP Addresses, or CIDR Blocks that are able to access the Cognitive Services Account.
  /// [virtualNetworkRules] A `virtual_network_rules` block as defined below.
  const GetAccountNetworkAcl({
    required this.bypass,
    required this.defaultAction,
    required this.ipRules,
    required this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': bypass,
      'defaultAction': defaultAction,
      'ipRules': ipRules,
      'virtualNetworkRules': pulumi.Input.mapInputValue<List<GetAccountNetworkAclVirtualNetworkRule>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<GetAccountNetworkAclVirtualNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAccountNetworkAcl.fromMap(Map<String, dynamic> map) {
    return GetAccountNetworkAcl(
      bypass: pulumi.Input.fromValue(map['bypass'] as String),
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: pulumi.Input.fromValue((map['ipRules'] as List).cast<String>()),
      virtualNetworkRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountNetworkAclVirtualNetworkRule>(map['virtualNetworkRules']!, (value) => GetAccountNetworkAclVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

