// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_custom_rule.dart';
import 'firewall_policy_managed_rule.dart';

/// {@template pulumi_frontdoor_firewall_policy_firewall_policy_args_doc}
/// The set of arguments for FirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_firewall_policy_firewall_policy_args_doc}
class FirewallPolicyArgs {
  /// If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? customBlockResponseBody;
  /// If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  final pulumi.Input<int>? customBlockResponseStatusCode;
  /// One or more `custom_rule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyCustomRule>>? customRules;
  /// Is the policy a enabled state or disabled state. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// One or more `managed_rule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRule>>? managedRules;
  /// The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  final pulumi.Input<String>? mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// If action type is redirect, this field represents redirect URL for the client.
  final pulumi.Input<String>? redirectUrl;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FirewallPolicyArgs].
  /// [customBlockResponseBody] If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  /// [customRules] One or more `custom_rule` blocks as defined below.
  /// [enabled] Is the policy a enabled state or disabled state. Defaults to `true`.
  /// [managedRules] One or more `managed_rule` blocks as defined below.
  /// [mode] The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [redirectUrl] If action type is redirect, this field represents redirect URL for the client.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  FirewallPolicyArgs({
    pulumi.Output<String>? customBlockResponseBody,
    pulumi.Output<int>? customBlockResponseStatusCode,
    pulumi.Output<List<FirewallPolicyCustomRule>>? customRules,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<FirewallPolicyManagedRule>>? managedRules,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? redirectUrl,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customBlockResponseBody = pulumi.Input.asOptionalInput<String>(customBlockResponseBody),
      customBlockResponseStatusCode = pulumi.Input.asOptionalInput<int>(customBlockResponseStatusCode),
      customRules = pulumi.Input.asOptionalInput<List<FirewallPolicyCustomRule>>(customRules),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      managedRules = pulumi.Input.asOptionalInput<List<FirewallPolicyManagedRule>>(managedRules),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      redirectUrl = pulumi.Input.asOptionalInput<String>(redirectUrl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<FirewallPolicyCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'managedRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyManagedRule>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<FirewallPolicyManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'name': ?name,
      'redirectUrl': ?redirectUrl,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      customBlockResponseBody: map['customBlockResponseBody'] == null ? null : pulumi.Output.create<String>(map['customBlockResponseBody'] as String),
      customBlockResponseStatusCode: map['customBlockResponseStatusCode'] == null ? null : pulumi.Output.create<int>(map['customBlockResponseStatusCode'] as int),
      customRules: map['customRules'] == null ? null : pulumi.Output.create<List<FirewallPolicyCustomRule>>(pulumi.Input.decodeList<FirewallPolicyCustomRule>(map['customRules'], (value) => FirewallPolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      managedRules: map['managedRules'] == null ? null : pulumi.Output.create<List<FirewallPolicyManagedRule>>(pulumi.Input.decodeList<FirewallPolicyManagedRule>(map['managedRules'], (value) => FirewallPolicyManagedRule.fromMap((value as Map).cast<String, dynamic>()))),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      redirectUrl: map['redirectUrl'] == null ? null : pulumi.Output.create<String>(map['redirectUrl'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

