// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_custom_rule.dart';
import 'policy_managed_rules.dart';
import 'policy_policy_settings.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// One or more `custom_rules` blocks as defined below.
  final pulumi.Input<List<PolicyCustomRule>>? customRules;
  /// A list of HTTP Listener IDs from an `azure.network.ApplicationGateway`.
  final pulumi.Input<List<String>>? httpListenerIds;
  /// Resource location. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `managed_rules` blocks as defined below.
  final pulumi.Input<PolicyManagedRules>? managedRules;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of URL Path Map Path Rule IDs from an `azure.network.ApplicationGateway`.
  final pulumi.Input<List<String>>? pathBasedRuleIds;
  /// A `policy_settings` block as defined below.
  final pulumi.Input<PolicyPolicySettings>? policySettings;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyState].
  /// [customRules] One or more `custom_rules` blocks as defined below.
  /// [httpListenerIds] A list of HTTP Listener IDs from an `azure.network.ApplicationGateway`.
  /// [location] Resource location. Changing this forces a new resource to be created.
  /// [managedRules] A `managed_rules` blocks as defined below.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [pathBasedRuleIds] A list of URL Path Map Path Rule IDs from an `azure.network.ApplicationGateway`.
  /// [policySettings] A `policy_settings` block as defined below.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  PolicyState({
    pulumi.Output<List<PolicyCustomRule>>? customRules,
    pulumi.Output<List<String>>? httpListenerIds,
    pulumi.Output<String>? location,
    pulumi.Output<PolicyManagedRules>? managedRules,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? pathBasedRuleIds,
    pulumi.Output<PolicyPolicySettings>? policySettings,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customRules = pulumi.Input.asOptionalInput<List<PolicyCustomRule>>(customRules),
      httpListenerIds = pulumi.Input.asOptionalInput<List<String>>(httpListenerIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedRules = pulumi.Input.asOptionalInput<PolicyManagedRules>(managedRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      pathBasedRuleIds = pulumi.Input.asOptionalInput<List<String>>(pathBasedRuleIds),
      policySettings = pulumi.Input.asOptionalInput<PolicyPolicySettings>(policySettings),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<PolicyCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<PolicyCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpListenerIds': ?httpListenerIds,
      'location': ?location,
      'managedRules': ?pulumi.Input.mapOptionalInputValue<PolicyManagedRules, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'name': ?name,
      'pathBasedRuleIds': ?pathBasedRuleIds,
      'policySettings': ?pulumi.Input.mapOptionalInputValue<PolicyPolicySettings, Map<String, dynamic>>(policySettings, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      customRules: map['customRules'] == null ? null : pulumi.Output.create<List<PolicyCustomRule>>(pulumi.Input.decodeList<PolicyCustomRule>(map['customRules'], (value) => PolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))),
      httpListenerIds: map['httpListenerIds'] == null ? null : pulumi.Output.create<List<String>>((map['httpListenerIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedRules: map['managedRules'] == null ? null : pulumi.Output.create<PolicyManagedRules>(PolicyManagedRules.fromMap((map['managedRules'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pathBasedRuleIds: map['pathBasedRuleIds'] == null ? null : pulumi.Output.create<List<String>>((map['pathBasedRuleIds'] as List).cast<String>()),
      policySettings: map['policySettings'] == null ? null : pulumi.Output.create<PolicyPolicySettings>(PolicyPolicySettings.fromMap((map['policySettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

