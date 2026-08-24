// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_posture_rules_result_input.dart';
import 'get_zero_trust_device_posture_rules_result_match.dart';

class GetZeroTrustDevicePostureRulesResult {
  /// The description of the device posture rule.
  final pulumi.Input<String> description;
  /// Whether the rule is enabled. This is a computed, read-only value. It is false for deprecated Kolide posture rules that still use the issueCount input, and true otherwise.
  final pulumi.Input<bool> enabled;
  /// Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  final pulumi.Input<String> expiration;
  /// API UUID.
  final pulumi.Input<String> id;
  /// The value to be checked against.
  final pulumi.Input<GetZeroTrustDevicePostureRulesResultInput> input;
  /// The conditions that the client must match to run the rule.
  final pulumi.Input<List<GetZeroTrustDevicePostureRulesResultMatch>> matches;
  /// The name of the device posture rule.
  final pulumi.Input<String> name;
  /// Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  final pulumi.Input<String> schedule;
  /// The type of device posture rule.
  /// Available values: "file", "application", "tanium", "gateway", "warp", "disk*encryption", "serial*number", "sentinelone", "carbonblack", "firewall", "os*version", "domain*joined", "client*certificate", "client*certificate*v2", "antivirus", "unique*client*id", "kolide", "tanium*s2s", "crowdstrike*s2s", "intune", "workspace*one", "sentinelone*s2s", "custom*s2s".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustDevicePostureRulesResult].
  /// [description] The description of the device posture rule.
  /// [enabled] Whether the rule is enabled. This is a computed, read-only value. It is false for deprecated Kolide posture rules that still use the issueCount input, and true otherwise.
  /// [expiration] Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  /// [id] API UUID.
  /// [input] The value to be checked against.
  /// [matches] The conditions that the client must match to run the rule.
  /// [name] The name of the device posture rule.
  /// [schedule] Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  /// [type] The type of device posture rule.
  const GetZeroTrustDevicePostureRulesResult({
    required this.description,
    required this.enabled,
    required this.expiration,
    required this.id,
    required this.input,
    required this.matches,
    required this.name,
    required this.schedule,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'enabled': enabled,
      'expiration': expiration,
      'id': id,
      'input': pulumi.Input.mapInputValue<GetZeroTrustDevicePostureRulesResultInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'matches': pulumi.Input.mapInputValue<List<GetZeroTrustDevicePostureRulesResultMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetZeroTrustDevicePostureRulesResultMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'schedule': schedule,
      'type': type,
    };
  }

  factory GetZeroTrustDevicePostureRulesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureRulesResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiration: pulumi.Input.fromValue(map['expiration'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      input: pulumi.Input.fromValue(GetZeroTrustDevicePostureRulesResultInput.fromMap((map['input']! as Map).cast<String, dynamic>())),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDevicePostureRulesResultMatch>(map['matches']!, (value) => GetZeroTrustDevicePostureRulesResultMatch.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
