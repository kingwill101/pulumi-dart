// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_network_rule_set_network_rule.dart';

class NamespaceNetworkRuleSet {
  /// Specifies the default action for the Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? defaultAction;
  /// One or more IP Addresses, or CIDR Blocks which should be able to access the Service Bus Namespace.
  final pulumi.Input<List<String>>? ipRules;
  /// One or more `network_rules` blocks as defined below.
  final pulumi.Input<List<NamespaceNetworkRuleSetNetworkRule>>? networkRules;
  /// Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// > **Note:** To disable public network access, you must also configure the property `public_network_access_enabled`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Are Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration? See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md)
  final pulumi.Input<bool>? trustedServicesAllowed;

  /// Creates a new [NamespaceNetworkRuleSet].
  /// [defaultAction] Specifies the default action for the Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRules] One or more IP Addresses, or CIDR Blocks which should be able to access the Service Bus Namespace.
  /// [networkRules] One or more `network_rules` blocks as defined below.
  /// [publicNetworkAccessEnabled] Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`.
  /// [trustedServicesAllowed] Are Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration? See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md)
  NamespaceNetworkRuleSet({
    this.defaultAction,
    this.ipRules,
    this.networkRules,
    this.publicNetworkAccessEnabled,
    this.trustedServicesAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?ipRules,
      'networkRules': ?pulumi.Input.mapOptionalInputValue<List<NamespaceNetworkRuleSetNetworkRule>, List<Map<String, dynamic>>>(networkRules, (value) => pulumi.Input.encodeList<NamespaceNetworkRuleSetNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'trustedServicesAllowed': ?trustedServicesAllowed,
    };
  }

  factory NamespaceNetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return NamespaceNetworkRuleSet(
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      ipRules: map['ipRules'] == null ? null : ((map['ipRules']! as List).cast<String>()).input(),
      networkRules: map['networkRules'] == null ? null : (pulumi.Input.decodeList<NamespaceNetworkRuleSetNetworkRule>(map['networkRules']!, (value) => NamespaceNetworkRuleSetNetworkRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      trustedServicesAllowed: map['trustedServicesAllowed'] == null ? null : (map['trustedServicesAllowed']! as bool).input(),
    );
  }
}

