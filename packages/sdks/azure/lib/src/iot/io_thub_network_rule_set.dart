// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_thub_network_rule_set_ip_rule.dart';

class IoTHubNetworkRuleSet {
  /// Determines if Network Rule Set is also applied to the BuiltIn EventHub EndPoint of the IotHub. Defaults to `false`.
  final pulumi.Input<bool>? applyToBuiltinEventhubEndpoint;
  /// Default Action for Network Rule Set. Possible values are `DefaultActionDeny`, `DefaultActionAllow`. Defaults to `DefaultActionDeny`.
  final pulumi.Input<String>? defaultAction;
  /// One or more `ip_rule` blocks as defined below.
  final pulumi.Input<List<IoTHubNetworkRuleSetIpRule>>? ipRules;

  /// Creates a new [IoTHubNetworkRuleSet].
  /// [applyToBuiltinEventhubEndpoint] Determines if Network Rule Set is also applied to the BuiltIn EventHub EndPoint of the IotHub. Defaults to `false`.
  /// [defaultAction] Default Action for Network Rule Set. Possible values are `DefaultActionDeny`, `DefaultActionAllow`. Defaults to `DefaultActionDeny`.
  /// [ipRules] One or more `ip_rule` blocks as defined below.
  IoTHubNetworkRuleSet({
    this.applyToBuiltinEventhubEndpoint,
    this.defaultAction,
    this.ipRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToBuiltinEventhubEndpoint': ?applyToBuiltinEventhubEndpoint,
      'defaultAction': ?defaultAction,
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IoTHubNetworkRuleSetIpRule>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IoTHubNetworkRuleSetIpRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IoTHubNetworkRuleSet.fromMap(Map<String, dynamic> map) {
    return IoTHubNetworkRuleSet(
      applyToBuiltinEventhubEndpoint: map['applyToBuiltinEventhubEndpoint'] == null ? null : (map['applyToBuiltinEventhubEndpoint']! as bool).input(),
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      ipRules: map['ipRules'] == null ? null : (pulumi.Input.decodeList<IoTHubNetworkRuleSetIpRule>(map['ipRules']!, (value) => IoTHubNetworkRuleSetIpRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

