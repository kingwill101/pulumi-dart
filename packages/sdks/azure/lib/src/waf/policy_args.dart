// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_custom_rule.dart';
import 'policy_managed_rules.dart';
import 'policy_policy_settings.dart';

/// {@template pulumi_waf_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_waf_policy_policy_args_doc}
class PolicyArgs {
  /// One or more `custom_rules` blocks as defined below.
  final pulumi.Input<List<PolicyCustomRule>>? customRules;
  /// Resource location. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `managed_rules` blocks as defined below.
  final pulumi.Input<PolicyManagedRules> managedRules;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `policy_settings` block as defined below.
  final pulumi.Input<PolicyPolicySettings>? policySettings;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyArgs].
  /// [customRules] One or more `custom_rules` blocks as defined below.
  /// [location] Resource location. Changing this forces a new resource to be created.
  /// [managedRules] A `managed_rules` blocks as defined below.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [policySettings] A `policy_settings` block as defined below.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  PolicyArgs({
    pulumi.Output<List<PolicyCustomRule>>? customRules,
    pulumi.Output<String>? location,
    required pulumi.Output<PolicyManagedRules> managedRules,
    pulumi.Output<String>? name,
    pulumi.Output<PolicyPolicySettings>? policySettings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customRules = pulumi.Input.asOptionalInput<List<PolicyCustomRule>>(customRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedRules = pulumi.Input.asInput<PolicyManagedRules>(managedRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      policySettings = pulumi.Input.asOptionalInput<PolicyPolicySettings>(policySettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<PolicyCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<PolicyCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'managedRules': pulumi.Input.mapInputValue<PolicyManagedRules, Map<String, dynamic>>(managedRules, (value) => value.toMap()),
      'name': ?name,
      'policySettings': ?pulumi.Input.mapOptionalInputValue<PolicyPolicySettings, Map<String, dynamic>>(policySettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      customRules: map['customRules'] == null ? null : pulumi.Output.create<List<PolicyCustomRule>>(pulumi.Input.decodeList<PolicyCustomRule>(map['customRules'], (value) => PolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedRules: pulumi.Output.create<PolicyManagedRules>(PolicyManagedRules.fromMap((map['managedRules'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policySettings: map['policySettings'] == null ? null : pulumi.Output.create<PolicyPolicySettings>(PolicyPolicySettings.fromMap((map['policySettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

