// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_posture_rule_input.dart';
import 'device_posture_rule_match.dart';

/// {@template pulumi_index_device_posture_rule_device_posture_rule_args_doc}
/// The set of arguments for DevicePostureRule.
/// {@endtemplate}
/// {@macro pulumi_index_device_posture_rule_device_posture_rule_args_doc}
class DevicePostureRuleArgs {
  final pulumi.Input<String> accountId;
  /// The description of the device posture rule.
  final pulumi.Input<String?>? description;
  /// Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  final pulumi.Input<String?>? expiration;
  /// The value to be checked against.
  final pulumi.Input<DevicePostureRuleInput?>? input;
  /// The conditions that the client must match to run the rule.
  final pulumi.Input<List<DevicePostureRuleMatch>?>? matches;
  /// The name of the device posture rule.
  final pulumi.Input<String?>? name;
  /// Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  final pulumi.Input<String?>? schedule;
  /// The type of device posture rule.
  /// Available values: "file", "application", "tanium", "gateway", "warp", "disk*encryption", "serial*number", "sentinelone", "carbonblack", "firewall", "os*version", "domain*joined", "client*certificate", "client*certificate*v2", "antivirus", "unique*client*id", "kolide", "tanium*s2s", "crowdstrike*s2s", "intune", "workspace*one", "sentinelone*s2s", "custom*s2s".
  final pulumi.Input<String> type;

  /// Creates a new [DevicePostureRuleArgs].
  /// [accountId] Required.
  /// [description] The description of the device posture rule.
  /// [expiration] Sets the expiration time for a posture check result. If empty, the result remains valid until it is overwritten by new data from the WARP client.
  /// [input] The value to be checked against.
  /// [matches] The conditions that the client must match to run the rule.
  /// [name] The name of the device posture rule.
  /// [schedule] Polling frequency for the WARP client posture check. Default: `5m` (poll every five minutes). Minimum: `1m`.
  /// [type] The type of device posture rule.
  const DevicePostureRuleArgs({
    required this.accountId,
    this.description,
    this.expiration,
    this.input,
    this.matches,
    this.name,
    this.schedule,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'expiration': ?expiration,
      'input': ?pulumi.Input.mapOptionalInputValue<DevicePostureRuleInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'matches': ?pulumi.Input.mapOptionalInputValue<List<DevicePostureRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<DevicePostureRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'schedule': ?schedule,
      'type': type,
    };
  }

  factory DevicePostureRuleArgs.fromMap(Map<String, dynamic> map) {
    return DevicePostureRuleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevicePostureRuleInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matches: (() { final guardedValue = map['matches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DevicePostureRuleMatch>(guardedValue, (value) => DevicePostureRuleMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
