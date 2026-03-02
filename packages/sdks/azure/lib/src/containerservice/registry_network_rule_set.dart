// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_network_rule_set_ip_rule.dart';

class RegistryNetworkRuleSet {
  /// The behaviour for requests matching no rules. Either `Allow` or `Deny`. Defaults to `Allow`
  final pulumi.Input<String>? defaultAction;
  /// One or more `ip_rule` blocks as defined below.
  ///
  /// > **Note:** `network_rule_set` is only supported with the `Premium` SKU at this time.
  ///
  /// > **Note:** Azure automatically configures Network Rules - to remove these, you'll need to specify an `network_rule_set` block with `default_action` set to `Deny`.
  final pulumi.Input<List<RegistryNetworkRuleSetIpRule>>? ipRules;

  /// Creates a new [RegistryNetworkRuleSet].
  /// [defaultAction] The behaviour for requests matching no rules. Either `Allow` or `Deny`. Defaults to `Allow`
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  RegistryNetworkRuleSet({
    this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<RegistryNetworkRuleSetIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<RegistryNetworkRuleSetIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegistryNetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return RegistryNetworkRuleSet(
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<RegistryNetworkRuleSetIpRule>(map['ipRules']!, (value) => RegistryNetworkRuleSetIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

