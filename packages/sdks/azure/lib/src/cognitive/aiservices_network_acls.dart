// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aiservices_network_acls_virtual_network_rule.dart';

class AIServicesNetworkAcls {
  /// Whether to allow trusted Azure Services to access the service. Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  final String? bypass;
  /// The Default Action to use when no rules match from `ip_rules` / `virtual_network_rules`. Possible values are `Allow` and `Deny`.
  final String defaultAction;
  /// One or more IP Addresses, or CIDR Blocks which should be able to access the AI Services Account.
  final List<String>? ipRules;
  /// A `virtual_network_rules` block as defined below.
  final List<AIServicesNetworkAclsVirtualNetworkRule>? virtualNetworkRules;

  /// Creates a new [AIServicesNetworkAcls].
  /// [bypass] Whether to allow trusted Azure Services to access the service. Possible values are `None` and `AzureServices`. Defaults to `AzureServices`.
  /// [defaultAction] The Default Action to use when no rules match from `ip_rules` / `virtual_network_rules`. Possible values are `Allow` and `Deny`.
  /// [ipRules] One or more IP Addresses, or CIDR Blocks which should be able to access the AI Services Account.
  /// [virtualNetworkRules] A `virtual_network_rules` block as defined below.
  AIServicesNetworkAcls({
    this.bypass,
    required this.defaultAction,
    this.ipRules,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypass': ?bypass,
      'defaultAction': defaultAction,
      'ipRules': ?ipRules,
      'virtualNetworkRules': ?virtualNetworkRules == null ? null : pulumi.Input.encodeList<AIServicesNetworkAclsVirtualNetworkRule, Map<String, dynamic>>(virtualNetworkRules!, (value) => value.toMap()),
    };
  }

  factory AIServicesNetworkAcls.fromMap(Map<String, dynamic> map) {
    return AIServicesNetworkAcls(
      bypass: map['bypass'] == null ? null : map['bypass'] as String,
      defaultAction: map['defaultAction'] as String,
      ipRules: map['ipRules'] == null ? null : (map['ipRules'] as List).cast<String>(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<AIServicesNetworkAclsVirtualNetworkRule>(map['virtualNetworkRules'], (value) => AIServicesNetworkAclsVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

