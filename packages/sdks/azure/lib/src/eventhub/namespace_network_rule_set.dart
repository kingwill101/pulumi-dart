// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_network_rule_set_network_rule.dart';

class NamespaceNetworkRuleSet {
  /// Specifies the default action for the Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String?>? defaultAction;
  /// One or more IP Addresses, or CIDR Blocks which should be able to access the Service Bus Namespace.
  final pulumi.Input<List<String>?>? ipRules;
  /// One or more `networkRules` blocks as defined below.
  final pulumi.Input<List<NamespaceNetworkRuleSetNetworkRule>?>? networkRules;
  /// Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`.
  ///
  /// &gt; **Note:** To disable public network access, you must also configure the property `publicNetworkAccessEnabled`.
  final pulumi.Input<bool?>? publicNetworkAccessEnabled;
  /// Are Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration? See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md)
  final pulumi.Input<bool?>? trustedServicesAllowed;

  /// Creates a new [NamespaceNetworkRuleSet].
  /// [defaultAction] Specifies the default action for the Network Rule Set. Possible values are `Allow` and `Deny`. Defaults to `Allow`.
  /// [ipRules] One or more IP Addresses, or CIDR Blocks which should be able to access the Service Bus Namespace.
  /// [networkRules] One or more `networkRules` blocks as defined below.
  /// [publicNetworkAccessEnabled] Whether to allow traffic over public network. Possible values are `true` and `false`. Defaults to `true`.
  /// [trustedServicesAllowed] Are Azure Services that are known and trusted for this resource type are allowed to bypass firewall configuration? See [Trusted Microsoft Services](https://github.com/MicrosoftDocs/azure-docs/blob/master/articles/service-bus-messaging/includes/service-bus-trusted-services.md)
  const NamespaceNetworkRuleSet({
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
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkRules: (() { final guardedValue = map['networkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceNetworkRuleSetNetworkRule>(guardedValue, (value) => NamespaceNetworkRuleSetNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trustedServicesAllowed: (() { final guardedValue = map['trustedServicesAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
