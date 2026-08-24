// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policies_result_expiration.dart';
import 'get_zero_trust_gateway_policies_result_rule_settings.dart';
import 'get_zero_trust_gateway_policies_result_schedule.dart';

class GetZeroTrustGatewayPoliciesResult {
  /// Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// Available values: "on", "off", "allow", "block", "scan", "noscan", "safesearch", "ytrestricted", "isolate", "noisolate", "override", "l4Override", "egress", "resolve", "quarantine", "redirect".
  final pulumi.Input<String> action;
  final pulumi.Input<String> createdAt;
  /// Indicate the date of deletion, if any.
  final pulumi.Input<String> deletedAt;
  /// Specify the rule description.
  final pulumi.Input<String> description;
  /// Specify the wirefilter expression used for device posture check. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final pulumi.Input<String> devicePosture;
  /// Specify whether the rule is enabled.
  final pulumi.Input<bool> enabled;
  /// Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
  final pulumi.Input<GetZeroTrustGatewayPoliciesResultExpiration> expiration;
  /// Specify the protocol or layer to evaluate the traffic, identity, and device posture expressions. Can only contain a single value.
  final pulumi.Input<List<String>> filters;
  /// Identify the API resource with a UUID.
  final pulumi.Input<String> id;
  /// Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final pulumi.Input<String> identity;
  /// Specify the rule name.
  final pulumi.Input<String> name;
  /// Set the order of your rules. Lower values indicate higher precedence. At each processing phase, evaluate applicable rules in ascending order of this value. Refer to Order of enforcement to manage precedence via Terraform.
  final pulumi.Input<int> precedence;
  /// Indicate that this rule is shared via the Orgs API and read only.
  final pulumi.Input<bool> readOnly;
  /// Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  final pulumi.Input<GetZeroTrustGatewayPoliciesResultRuleSettings> ruleSettings;
  /// Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<GetZeroTrustGatewayPoliciesResultSchedule> schedule;
  /// Indicate that this rule is sharable via the Orgs API.
  final pulumi.Input<bool> sharable;
  /// Provide the account tag of the account that created the rule.
  final pulumi.Input<String> sourceAccount;
  /// Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final pulumi.Input<String> traffic;
  final pulumi.Input<String> updatedAt;
  /// Indicate the version number of the rule(read-only).
  final pulumi.Input<int> version;
  /// Indicate a warning for a misconfigured rule, if any.
  final pulumi.Input<String> warningStatus;

  /// Creates a new [GetZeroTrustGatewayPoliciesResult].
  /// [action] Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// [createdAt] Required.
  /// [deletedAt] Indicate the date of deletion, if any.
  /// [description] Specify the rule description.
  /// [devicePosture] Specify the wirefilter expression used for device posture check. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [enabled] Specify whether the rule is enabled.
  /// [expiration] Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
  /// [filters] Specify the protocol or layer to evaluate the traffic, identity, and device posture expressions. Can only contain a single value.
  /// [id] Identify the API resource with a UUID.
  /// [identity] Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [name] Specify the rule name.
  /// [precedence] Set the order of your rules. Lower values indicate higher precedence. At each processing phase, evaluate applicable rules in ascending order of this value. Refer to Order of enforcement to manage precedence via Terraform.
  /// [readOnly] Indicate that this rule is shared via the Orgs API and read only.
  /// [ruleSettings] Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  /// [schedule] Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  /// [sharable] Indicate that this rule is sharable via the Orgs API.
  /// [sourceAccount] Provide the account tag of the account that created the rule.
  /// [traffic] Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [updatedAt] Required.
  /// [version] Indicate the version number of the rule(read-only).
  /// [warningStatus] Indicate a warning for a misconfigured rule, if any.
  const GetZeroTrustGatewayPoliciesResult({
    required this.action,
    required this.createdAt,
    required this.deletedAt,
    required this.description,
    required this.devicePosture,
    required this.enabled,
    required this.expiration,
    required this.filters,
    required this.id,
    required this.identity,
    required this.name,
    required this.precedence,
    required this.readOnly,
    required this.ruleSettings,
    required this.schedule,
    required this.sharable,
    required this.sourceAccount,
    required this.traffic,
    required this.updatedAt,
    required this.version,
    required this.warningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'createdAt': createdAt,
      'deletedAt': deletedAt,
      'description': description,
      'devicePosture': devicePosture,
      'enabled': enabled,
      'expiration': pulumi.Input.mapInputValue<GetZeroTrustGatewayPoliciesResultExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'filters': filters,
      'id': id,
      'identity': identity,
      'name': name,
      'precedence': precedence,
      'readOnly': readOnly,
      'ruleSettings': pulumi.Input.mapInputValue<GetZeroTrustGatewayPoliciesResultRuleSettings, Map<String, dynamic>>(ruleSettings, (value) => value.toMap()),
      'schedule': pulumi.Input.mapInputValue<GetZeroTrustGatewayPoliciesResultSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sharable': sharable,
      'sourceAccount': sourceAccount,
      'traffic': traffic,
      'updatedAt': updatedAt,
      'version': version,
      'warningStatus': warningStatus,
    };
  }

  factory GetZeroTrustGatewayPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResult(
      action: pulumi.Input.fromValue(map['action'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      devicePosture: pulumi.Input.fromValue(map['devicePosture'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiration: pulumi.Input.fromValue(GetZeroTrustGatewayPoliciesResultExpiration.fromMap((map['expiration']! as Map).cast<String, dynamic>())),
      filters: pulumi.Input.fromValue((map['filters'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      identity: pulumi.Input.fromValue(map['identity'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      precedence: pulumi.Input.fromValue((map['precedence'] as num).toInt()),
      readOnly: pulumi.Input.fromValue(map['readOnly'] as bool),
      ruleSettings: pulumi.Input.fromValue(GetZeroTrustGatewayPoliciesResultRuleSettings.fromMap((map['ruleSettings']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue(GetZeroTrustGatewayPoliciesResultSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())),
      sharable: pulumi.Input.fromValue(map['sharable'] as bool),
      sourceAccount: pulumi.Input.fromValue(map['sourceAccount'] as String),
      traffic: pulumi.Input.fromValue(map['traffic'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
      warningStatus: pulumi.Input.fromValue(map['warningStatus'] as String),
    );
  }
}
