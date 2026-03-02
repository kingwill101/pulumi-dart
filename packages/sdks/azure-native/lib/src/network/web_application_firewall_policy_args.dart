// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_rules_definition.dart';
import 'policy_settings.dart';
import 'web_application_firewall_custom_rule.dart';

/// {@template pulumi_network_web_application_firewall_policy_args_doc}
/// The set of arguments for WebApplicationFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_web_application_firewall_policy_args_doc}
class WebApplicationFirewallPolicyArgs {
  /// The custom rules inside the policy.
  final pulumi.Input<List<WebApplicationFirewallCustomRule>>? customRules;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Describes the managedRules structure.
  final pulumi.Input<ManagedRulesDefinition> managedRules;
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// The PolicySettings for policy.
  final pulumi.Input<PolicySettings>? policySettings;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WebApplicationFirewallPolicyArgs].
  /// [customRules] The custom rules inside the policy.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [managedRules] Describes the managedRules structure.
  /// [policyName] The name of the policy.
  /// [policySettings] The PolicySettings for policy.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  WebApplicationFirewallPolicyArgs({
    this.customRules,
    this.id,
    this.location,
    required this.managedRules,
    this.policyName,
    this.policySettings,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<WebApplicationFirewallCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<WebApplicationFirewallCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'location': ?location,
      'managedRules': pulumi.Input.mapInputValue<ManagedRulesDefinition, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'policyName': ?policyName,
      'policySettings': ?pulumi.Input.mapOptionalInputValue<PolicySettings, Map<String, dynamic>>(policySettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory WebApplicationFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WebApplicationFirewallPolicyArgs(
      customRules: map['customRules'] == null ? null : (pulumi.Input.decodeList<WebApplicationFirewallCustomRule>(map['customRules'], (value) => WebApplicationFirewallCustomRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedRules: (ManagedRulesDefinition.fromMap((map['managedRules'] as Map).cast<String, dynamic>())).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      policySettings: map['policySettings'] == null ? null : (PolicySettings.fromMap((map['policySettings'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

