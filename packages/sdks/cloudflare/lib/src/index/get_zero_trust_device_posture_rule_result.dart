// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_posture_rule_input.dart';
import 'get_zero_trust_device_posture_rule_match.dart';

/// Result data returned by getZeroTrustDevicePostureRule.
class GetZeroTrustDevicePostureRuleResult {
  final String? accountId;
  /// The description of the device posture rule.
  final String? description;
  /// Whether the rule is enabled. This is a computed, read-only value. It is false for deprecated Kolide posture rules that still use the issueCount input, and true otherwise.
  final bool? enabled;
  /// Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  final String? expiration;
  /// API UUID.
  final String? id;
  /// The value to be checked against.
  final GetZeroTrustDevicePostureRuleInput? input;
  /// The conditions that the client must match to run the rule.
  final List<GetZeroTrustDevicePostureRuleMatch>? matches;
  /// The name of the device posture rule.
  final String? name;
  /// API UUID.
  final String? ruleId;
  /// Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  final String? schedule;
  /// The type of device posture rule.
  /// Available values: "file", "application", "tanium", "gateway", "warp", "disk*encryption", "serial*number", "sentinelone", "carbonblack", "firewall", "os*version", "domain*joined", "client*certificate", "client*certificate*v2", "antivirus", "unique*client*id", "kolide", "tanium*s2s", "crowdstrike*s2s", "intune", "workspace*one", "sentinelone*s2s", "custom*s2s".
  final String? type;

  /// Creates a new [GetZeroTrustDevicePostureRuleResult].
  /// [accountId] Optional.
  /// [description] The description of the device posture rule.
  /// [enabled] Whether the rule is enabled. This is a computed, read-only value. It is false for deprecated Kolide posture rules that still use the issueCount input, and true otherwise.
  /// [expiration] Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  /// [id] API UUID.
  /// [input] The value to be checked against.
  /// [matches] The conditions that the client must match to run the rule.
  /// [name] The name of the device posture rule.
  /// [ruleId] API UUID.
  /// [schedule] Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  /// [type] The type of device posture rule.
  const GetZeroTrustDevicePostureRuleResult({
    this.accountId,
    this.description,
    this.enabled,
    this.expiration,
    this.id,
    this.input,
    this.matches,
    this.name,
    this.ruleId,
    this.schedule,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'enabled': ?enabled,
      'expiration': ?expiration,
      'id': ?id,
      'input': ?input?.toMap(),
      'matches': ?(() { final guardedValue = matches; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDevicePostureRuleMatch, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'ruleId': ?ruleId,
      'schedule': ?schedule,
      'type': ?type,
    };
  }

  factory GetZeroTrustDevicePostureRuleResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRuleResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return GetZeroTrustDevicePostureRuleInput.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      matches: (() { final guardedValue = map['matches']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDevicePostureRuleMatch>(guardedValue, (value) => GetZeroTrustDevicePostureRuleMatch.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
