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
    pulumi.Output<List<WebApplicationFirewallCustomRule>>? customRules,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<ManagedRulesDefinition> managedRules,
    pulumi.Output<String>? policyName,
    pulumi.Output<PolicySettings>? policySettings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customRules = pulumi.Input.asOptionalInput<List<WebApplicationFirewallCustomRule>>(customRules),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedRules = pulumi.Input.asInput<ManagedRulesDefinition>(managedRules),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policySettings = pulumi.Input.asOptionalInput<PolicySettings>(policySettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customRules: map['customRules'] == null ? null : pulumi.Output.create<List<WebApplicationFirewallCustomRule>>(pulumi.Input.decodeList<WebApplicationFirewallCustomRule>(map['customRules'], (value) => WebApplicationFirewallCustomRule.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedRules: pulumi.Output.create<ManagedRulesDefinition>(ManagedRulesDefinition.fromMap((map['managedRules'] as Map).cast<String, dynamic>())),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policySettings: map['policySettings'] == null ? null : pulumi.Output.create<PolicySettings>(PolicySettings.fromMap((map['policySettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

