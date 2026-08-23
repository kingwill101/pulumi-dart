// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_custom_rule.dart';
import 'policy_managed_rules.dart';
import 'policy_policy_settings.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// One or more `customRules` blocks as defined below.
  final pulumi.Input<List<PolicyCustomRule>>? customRules;
  /// A list of HTTP Listener IDs from an `azure.network.ApplicationGateway`.
  final pulumi.Input<List<String>>? httpListenerIds;
  /// Resource location. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `managedRules` blocks as defined below.
  final pulumi.Input<PolicyManagedRules>? managedRules;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of URL Path Map Path Rule IDs from an `azure.network.ApplicationGateway`.
  final pulumi.Input<List<String>>? pathBasedRuleIds;
  /// A `policySettings` block as defined below.
  final pulumi.Input<PolicyPolicySettings>? policySettings;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PolicyState].
  /// [customRules] One or more `customRules` blocks as defined below.
  /// [httpListenerIds] A list of HTTP Listener IDs from an `azure.network.ApplicationGateway`.
  /// [location] Resource location. Changing this forces a new resource to be created.
  /// [managedRules] A `managedRules` blocks as defined below.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [pathBasedRuleIds] A list of URL Path Map Path Rule IDs from an `azure.network.ApplicationGateway`.
  /// [policySettings] A `policySettings` block as defined below.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  const PolicyState({
    this.customRules,
    this.httpListenerIds,
    this.location,
    this.managedRules,
    this.name,
    this.pathBasedRuleIds,
    this.policySettings,
    this.resourceGroupName,
    this.tags,
  });

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
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyCustomRule>(guardedValue, (value) => PolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpListenerIds: (() { final guardedValue = map['httpListenerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyManagedRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathBasedRuleIds: (() { final guardedValue = map['pathBasedRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyPolicySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
