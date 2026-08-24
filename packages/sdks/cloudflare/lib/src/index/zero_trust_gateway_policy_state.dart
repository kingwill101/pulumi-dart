// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_policy_expiration.dart';
import 'zero_trust_gateway_policy_rule_settings.dart';
import 'zero_trust_gateway_policy_schedule.dart';

/// Input properties used for looking up and filtering ZeroTrustGatewayPolicy resources.
class ZeroTrustGatewayPolicyState {
  final pulumi.Input<String?>? accountId;
  /// Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// Available values: "on", "off", "allow", "block", "scan", "noscan", "safesearch", "ytrestricted", "isolate", "noisolate", "override", "l4Override", "egress", "resolve", "quarantine", "redirect".
  final pulumi.Input<String?>? action;
  final pulumi.Input<String?>? createdAt;
  /// Indicate the date of deletion, if any.
  final pulumi.Input<String?>? deletedAt;
  /// Specify the rule description.
  final pulumi.Input<String?>? description;
  /// Specify the wirefilter expression used for device posture check. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final pulumi.Input<String?>? devicePosture;
  /// Specify whether the rule is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
  final pulumi.Input<ZeroTrustGatewayPolicyExpiration?>? expiration;
  /// Specify the protocol or layer to evaluate the traffic, identity, and device posture expressions. Can only contain a single value.
  final pulumi.Input<List<String>?>? filters;
  /// Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final pulumi.Input<String?>? identity;
  /// Specify the rule name.
  final pulumi.Input<String?>? name;
  /// Set the order of your rules. Lower values indicate higher precedence. At each processing phase, evaluate applicable rules in ascending order of this value. Refer to Order of enforcement to manage precedence via Terraform.
  final pulumi.Input<int?>? precedence;
  /// Indicate that this rule is shared via the Orgs API and read only.
  final pulumi.Input<bool?>? readOnly;
  /// Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  final pulumi.Input<ZeroTrustGatewayPolicyRuleSettings?>? ruleSettings;
  /// Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  final pulumi.Input<ZeroTrustGatewayPolicySchedule?>? schedule;
  /// Indicate that this rule is sharable via the Orgs API.
  final pulumi.Input<bool?>? sharable;
  /// Provide the account tag of the account that created the rule.
  final pulumi.Input<String?>? sourceAccount;
  /// Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  final pulumi.Input<String?>? traffic;
  final pulumi.Input<String?>? updatedAt;
  /// Indicate the version number of the rule(read-only).
  final pulumi.Input<int?>? version;
  /// Indicate a warning for a misconfigured rule, if any.
  final pulumi.Input<String?>? warningStatus;

  /// Creates a new [ZeroTrustGatewayPolicyState].
  /// [accountId] Optional.
  /// [action] Specify the action to perform when the associated traffic, identity, and device posture expressions either absent or evaluate to `true`.
  /// [createdAt] Optional.
  /// [deletedAt] Indicate the date of deletion, if any.
  /// [description] Specify the rule description.
  /// [devicePosture] Specify the wirefilter expression used for device posture check. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [enabled] Specify whether the rule is enabled.
  /// [expiration] Defines the expiration time stamp and default duration of a DNS policy. Takes precedence over the policy's `schedule` configuration, if any. This  does not apply to HTTP or network policies. Settable only for `dns` rules.
  /// [filters] Specify the protocol or layer to evaluate the traffic, identity, and device posture expressions. Can only contain a single value.
  /// [identity] Specify the wirefilter expression used for identity matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [name] Specify the rule name.
  /// [precedence] Set the order of your rules. Lower values indicate higher precedence. At each processing phase, evaluate applicable rules in ascending order of this value. Refer to Order of enforcement to manage precedence via Terraform.
  /// [readOnly] Indicate that this rule is shared via the Orgs API and read only.
  /// [ruleSettings] Defines settings for this rule. Settings apply only to specific rule types and must use compatible selectors. If Terraform detects drift, confirm the setting supports your rule type and check whether the API modifies the value. Use API-returned values in your configuration to prevent drift.
  /// [schedule] Defines the schedule for activating DNS policies. Settable only for `dns` and `dnsResolver` rules.
  /// [sharable] Indicate that this rule is sharable via the Orgs API.
  /// [sourceAccount] Provide the account tag of the account that created the rule.
  /// [traffic] Specify the wirefilter expression used for traffic matching. The API automatically formats and sanitizes expressions before storing them. To prevent Terraform state drift, use the formatted expression returned in the API response.
  /// [updatedAt] Optional.
  /// [version] Indicate the version number of the rule(read-only).
  /// [warningStatus] Indicate a warning for a misconfigured rule, if any.
  const ZeroTrustGatewayPolicyState({
    this.accountId,
    this.action,
    this.createdAt,
    this.deletedAt,
    this.description,
    this.devicePosture,
    this.enabled,
    this.expiration,
    this.filters,
    this.identity,
    this.name,
    this.precedence,
    this.readOnly,
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
      'expiration': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'filters': ?filters,
      'identity': ?identity,
      'name': ?name,
      'precedence': ?precedence,
      'readOnly': ?readOnly,
      'ruleSettings': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicyRuleSettings, Map<String, dynamic>>(ruleSettings, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayPolicySchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'sharable': ?sharable,
      'sourceAccount': ?sourceAccount,
      'traffic': ?traffic,
      'updatedAt': ?updatedAt,
      'version': ?version,
      'warningStatus': ?warningStatus,
    };
  }

  factory ZeroTrustGatewayPolicyState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devicePosture: (() { final guardedValue = map['devicePosture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      precedence: (() { final guardedValue = map['precedence']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleSettings: (() { final guardedValue = map['ruleSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicyRuleSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayPolicySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sharable: (() { final guardedValue = map['sharable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceAccount: (() { final guardedValue = map['sourceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      traffic: (() { final guardedValue = map['traffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      warningStatus: (() { final guardedValue = map['warningStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
