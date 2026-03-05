// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_namespace_network_rulesets_ip_rule.dart';
import 'event_hub_namespace_network_rulesets_virtual_network_rule.dart';

class EventHubNamespaceNetworkRulesets {
  /// The default action to take when a rule is not matched. Possible values are `Allow` and `Deny`.
  final pulumi.Input<String> defaultAction;
  /// One or more `ip_rule` blocks as defined below.
  final pulumi.Input<List<EventHubNamespaceNetworkRulesetsIpRule>>? ipRules;
  /// Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  ///
  /// &gt; **Note:** The public network access setting at the network rule sets level should be the same as it's at the namespace level.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Whether Trusted Microsoft Services are allowed to bypass firewall.
  final pulumi.Input<bool>? trustedServiceAccessEnabled;
  /// One or more `virtual_network_rule` blocks as defined below.
  final pulumi.Input<List<EventHubNamespaceNetworkRulesetsVirtualNetworkRule>>? virtualNetworkRules;

  /// Creates a new [EventHubNamespaceNetworkRulesets].
  /// [defaultAction] The default action to take when a rule is not matched. Possible values are `Allow` and `Deny`.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  /// [publicNetworkAccessEnabled] Is public network access enabled for the EventHub Namespace? Defaults to `true`.
  /// [trustedServiceAccessEnabled] Whether Trusted Microsoft Services are allowed to bypass firewall.
  /// [virtualNetworkRules] One or more `virtual_network_rule` blocks as defined below.
  EventHubNamespaceNetworkRulesets({
    required this.defaultAction,
    this.ipRules,
    this.publicNetworkAccessEnabled,
    this.trustedServiceAccessEnabled,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<EventHubNamespaceNetworkRulesetsIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<EventHubNamespaceNetworkRulesetsIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'trustedServiceAccessEnabled': ?trustedServiceAccessEnabled,
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<EventHubNamespaceNetworkRulesetsVirtualNetworkRule>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<EventHubNamespaceNetworkRulesetsVirtualNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventHubNamespaceNetworkRulesets.fromMap(Map<String, dynamic> map) {
    return EventHubNamespaceNetworkRulesets(
      defaultAction: pulumi.Input.fromValue(map['defaultAction'] as String),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubNamespaceNetworkRulesetsIpRule>(guardedValue, (value) => EventHubNamespaceNetworkRulesetsIpRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trustedServiceAccessEnabled: (() { final guardedValue = map['trustedServiceAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventHubNamespaceNetworkRulesetsVirtualNetworkRule>(guardedValue, (value) => EventHubNamespaceNetworkRulesetsVirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

