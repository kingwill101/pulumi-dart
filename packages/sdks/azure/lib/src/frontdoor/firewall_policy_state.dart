// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_custom_rule.dart';
import 'firewall_policy_managed_rule.dart';

/// Input properties used for looking up and filtering FirewallPolicy resources.
class FirewallPolicyState {
  /// If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String>? customBlockResponseBody;
  /// If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  final pulumi.Input<int>? customBlockResponseStatusCode;
  /// One or more `custom_rule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyCustomRule>>? customRules;
  /// Is the policy a enabled state or disabled state. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Frontend Endpoints associated with this Front Door Web Application Firewall policy.
  final pulumi.Input<List<String>>? frontendEndpointIds;
  /// The Azure Region where this Front Door Firewall Policy exists.
  final pulumi.Input<String>? location;
  /// One or more `managed_rule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRule>>? managedRules;
  /// The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  final pulumi.Input<String>? mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// If action type is redirect, this field represents redirect URL for the client.
  final pulumi.Input<String>? redirectUrl;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FirewallPolicyState].
  /// [customBlockResponseBody] If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  /// [customRules] One or more `custom_rule` blocks as defined below.
  /// [enabled] Is the policy a enabled state or disabled state. Defaults to `true`.
  /// [frontendEndpointIds] The Frontend Endpoints associated with this Front Door Web Application Firewall policy.
  /// [location] The Azure Region where this Front Door Firewall Policy exists.
  /// [managedRules] One or more `managed_rule` blocks as defined below.
  /// [mode] The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [redirectUrl] If action type is redirect, this field represents redirect URL for the client.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  FirewallPolicyState({
    this.customBlockResponseBody,
    this.customBlockResponseStatusCode,
    this.customRules,
    this.enabled,
    this.frontendEndpointIds,
    this.location,
    this.managedRules,
    this.mode,
    this.name,
    this.redirectUrl,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBlockResponseBody': ?customBlockResponseBody,
      'customBlockResponseStatusCode': ?customBlockResponseStatusCode,
      'customRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyCustomRule>, List<Map<String, dynamic>>>(customRules, (value) => pulumi.Input.encodeList<FirewallPolicyCustomRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'frontendEndpointIds': ?frontendEndpointIds,
      'location': ?location,
      'managedRules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyManagedRule>, List<Map<String, dynamic>>>(managedRules, (value) => pulumi.Input.encodeList<FirewallPolicyManagedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'name': ?name,
      'redirectUrl': ?redirectUrl,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FirewallPolicyState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyState(
      customBlockResponseBody: map['customBlockResponseBody'] == null ? null : (map['customBlockResponseBody'] as String).input(),
      customBlockResponseStatusCode: map['customBlockResponseStatusCode'] == null ? null : (map['customBlockResponseStatusCode'] as int).input(),
      customRules: map['customRules'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyCustomRule>(map['customRules'], (value) => FirewallPolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      frontendEndpointIds: map['frontendEndpointIds'] == null ? null : ((map['frontendEndpointIds'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedRules: map['managedRules'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyManagedRule>(map['managedRules'], (value) => FirewallPolicyManagedRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      redirectUrl: map['redirectUrl'] == null ? null : (map['redirectUrl'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

