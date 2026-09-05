// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_custom_rule.dart';
import 'firewall_policy_managed_rule.dart';

/// Input properties used for looking up and filtering FirewallPolicy resources.
class FirewallPolicyState {
  /// If a `customRule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  final pulumi.Input<String?>? customBlockResponseBody;
  /// If a `customRule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  final pulumi.Input<int?>? customBlockResponseStatusCode;
  /// One or more `customRule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyCustomRule>?>? customRules;
  /// Is the policy a enabled state or disabled state. Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// The Frontend Endpoints associated with this Front Door Web Application Firewall policy.
  final pulumi.Input<List<String>?>? frontendEndpointIds;
  /// The Azure Region where this Front Door Firewall Policy exists.
  final pulumi.Input<String?>? location;
  /// One or more `managedRule` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyManagedRule>?>? managedRules;
  /// The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  final pulumi.Input<String?>? mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// If action type is redirect, this field represents redirect URL for the client.
  final pulumi.Input<String?>? redirectUrl;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FirewallPolicyState].
  /// [customBlockResponseBody] If a `customRule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  /// [customBlockResponseStatusCode] If a `customRule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  /// [customRules] One or more `customRule` blocks as defined below.
  /// [enabled] Is the policy a enabled state or disabled state. Defaults to `true`.
  /// [frontendEndpointIds] The Frontend Endpoints associated with this Front Door Web Application Firewall policy.
  /// [location] The Azure Region where this Front Door Firewall Policy exists.
  /// [managedRules] One or more `managedRule` blocks as defined below.
  /// [mode] The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  /// [name] The name of the policy. Changing this forces a new resource to be created.
  /// [redirectUrl] If action type is redirect, this field represents redirect URL for the client.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Web Application Firewall Policy.
  const FirewallPolicyState({
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
      customBlockResponseBody: (() { final guardedValue = map['customBlockResponseBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customBlockResponseStatusCode: (() { final guardedValue = map['customBlockResponseStatusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyCustomRule>(guardedValue, (value) => FirewallPolicyCustomRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendEndpointIds: (() { final guardedValue = map['frontendEndpointIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyManagedRule>(guardedValue, (value) => FirewallPolicyManagedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
