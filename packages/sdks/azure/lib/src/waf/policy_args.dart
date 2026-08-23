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
  /// One or more `customRules` blocks as defined below.
  final pulumi.Input<List<PolicyCustomRule>>? customRules;
  /// Resource location. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `managedRules` blocks as defined below.
  final pulumi.Input<PolicyManagedRules> managedRules;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `policySettings` block as defined below.
  final pulumi.Input<PolicyPolicySettings>? policySettings;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyArgs].
  /// [customRules] One or more `customRules` blocks as defined below.
  /// [location] Resource location. Changing this forces a new resource to be created.
  /// [managedRules] A `managedRules` blocks as defined below.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [policySettings] A `policySettings` block as defined below.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  const PolicyArgs({
    this.customRules,
    this.location,
    required this.managedRules,
    this.name,
    this.policySettings,
    required this.resourceGroupName,
    this.tags,
  });

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
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyCustomRule>(guardedValue, (value) => PolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedRules: pulumi.Input.fromValue(PolicyManagedRules.fromMap((map['managedRules']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPolicySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
