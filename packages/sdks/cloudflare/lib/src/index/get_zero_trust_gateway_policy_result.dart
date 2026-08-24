// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_gateway_policy_expiration.dart';
import 'get_zero_trust_gateway_policy_rule_settings.dart';
import 'get_zero_trust_gateway_policy_schedule.dart';

/// Result data returned by getZeroTrustGatewayPolicy.
class GetZeroTrustGatewayPolicyResult {
  final String? accountId;
  /// Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// Available values: "on", "off", "allow", "block", "scan", "noscan", "safesearch", "ytrestricted", "isolate", "noisolate", "override", "l4Override", "egress", "resolve", "quarantine", "redirect".
  final String? action;
  final String? createdAt;
  /// Indicate the date of deletion, if any.
  final String? deletedAt;
  /// Specify the rule description.
  final String? description;
  /// Specify the wirefilter expression used for device posture check. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final String? devicePosture;
  /// Specify whether the rule is enabled.
  final bool? enabled;
  /// Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
  final GetZeroTrustGatewayPolicyExpiration? expiration;
  /// Specify the protocol or layer to evaluate the traffic, identity, and device posture expressions. Can only contain a single value.
  final List<String>? filters;
  /// Identify the API resource with a UUID.
  final String? id;
  /// Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final String? identity;
  /// Specify the rule name.
  final String? name;
  /// Set the order of your rules. Lower values indicate higher precedence. At each processing phase, evaluate applicable rules in ascending order of this value. Refer to Order of enforcement to manage precedence via Terraform.
  final int? precedence;
  /// Indicate that this rule is shared via the Orgs API and read only.
  final bool? readOnly;
  /// Identify the API resource with a UUID.
  final String? ruleId;
  /// Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  final GetZeroTrustGatewayPolicyRuleSettings? ruleSettings;
  /// Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  final GetZeroTrustGatewayPolicySchedule? schedule;
  /// Indicate that this rule is sharable via the Orgs API.
  final bool? sharable;
  /// Provide the account tag of the account that created the rule.
  final String? sourceAccount;
  /// Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final String? traffic;
  final String? updatedAt;
  /// Indicate the version number of the rule(read-only).
  final int? version;
  /// Indicate a warning for a misconfigured rule, if any.
  final String? warningStatus;

  /// Creates a new [GetZeroTrustGatewayPolicyResult].
  /// [accountId] Optional.
  /// [action] Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// [createdAt] Optional.
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
  /// [ruleId] Identify the API resource with a UUID.
  /// [ruleSettings] Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  /// [schedule] Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  /// [sharable] Indicate that this rule is sharable via the Orgs API.
  /// [sourceAccount] Provide the account tag of the account that created the rule.
  /// [traffic] Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [updatedAt] Optional.
  /// [version] Indicate the version number of the rule(read-only).
  /// [warningStatus] Indicate a warning for a misconfigured rule, if any.
  const GetZeroTrustGatewayPolicyResult({
    this.accountId,
    this.action,
    this.createdAt,
    this.deletedAt,
    this.description,
    this.devicePosture,
    this.enabled,
    this.expiration,
    this.filters,
    this.id,
    this.identity,
    this.name,
    this.precedence,
    this.readOnly,
    this.ruleId,
    this.ruleSettings,
    this.schedule,
    this.sharable,
    this.sourceAccount,
    this.traffic,
    this.updatedAt,
    this.version,
    this.warningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'action': ?action,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'description': ?description,
      'devicePosture': ?devicePosture,
      'enabled': ?enabled,
      'expiration': ?expiration?.toMap(),
      'filters': ?filters,
      'id': ?id,
      'identity': ?identity,
      'name': ?name,
      'precedence': ?precedence,
      'readOnly': ?readOnly,
      'ruleId': ?ruleId,
      'ruleSettings': ?ruleSettings?.toMap(),
      'schedule': ?schedule?.toMap(),
      'sharable': ?sharable,
      'sourceAccount': ?sourceAccount,
      'traffic': ?traffic,
      'updatedAt': ?updatedAt,
      'version': ?version,
      'warningStatus': ?warningStatus,
    };
  }

  factory GetZeroTrustGatewayPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return GetZeroTrustGatewayPolicyExpiration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleSettings: (() { final guardedValue = map['ruleSettings']; if (guardedValue == null) return null; return GetZeroTrustGatewayPolicyRuleSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return GetZeroTrustGatewayPolicySchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sharable: (() { final guardedValue = map['sharable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sourceAccount: (() { final guardedValue = map['sourceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      traffic: (() { final guardedValue = map['traffic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      warningStatus: (() { final guardedValue = map['warningStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
