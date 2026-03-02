// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowlist_custom_alert_rule_response.dart';
import 'denylist_custom_alert_rule_response.dart';
import 'threshold_custom_alert_rule_response.dart';
import 'time_window_custom_alert_rule_response.dart';

/// Result data returned by getDeviceSecurityGroup.
class GetDeviceSecurityGroupResult {
  /// The allow-list custom alert rules.
  final List<AllowlistCustomAlertRuleResponse>? allowlistRules;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The deny-list custom alert rules.
  final List<DenylistCustomAlertRuleResponse>? denylistRules;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// The list of custom alert threshold rules.
  final List<ThresholdCustomAlertRuleResponse>? thresholdRules;
  /// The list of custom alert time-window rules.
  final List<TimeWindowCustomAlertRuleResponse>? timeWindowRules;
  /// Resource type
  final String type;

  /// Creates a new [GetDeviceSecurityGroupResult].
  /// [allowlistRules] The allow-list custom alert rules.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [denylistRules] The deny-list custom alert rules.
  /// [id] Resource Id
  /// [name] Resource name
  /// [thresholdRules] The list of custom alert threshold rules.
  /// [timeWindowRules] The list of custom alert time-window rules.
  /// [type] Resource type
  GetDeviceSecurityGroupResult({
    this.allowlistRules,
    required this.azureApiVersion,
    this.denylistRules,
    required this.id,
    required this.name,
    this.thresholdRules,
    this.timeWindowRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistRules': ?allowlistRules == null ? null : pulumi.Input.encodeList<AllowlistCustomAlertRuleResponse, Map<String, dynamic>>(allowlistRules!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'denylistRules': ?denylistRules == null ? null : pulumi.Input.encodeList<DenylistCustomAlertRuleResponse, Map<String, dynamic>>(denylistRules!, (value) => value.toMap()),
      'id': id,
      'name': name,
      'thresholdRules': ?thresholdRules == null ? null : pulumi.Input.encodeList<ThresholdCustomAlertRuleResponse, Map<String, dynamic>>(thresholdRules!, (value) => value.toMap()),
      'timeWindowRules': ?timeWindowRules == null ? null : pulumi.Input.encodeList<TimeWindowCustomAlertRuleResponse, Map<String, dynamic>>(timeWindowRules!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetDeviceSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceSecurityGroupResult(
      allowlistRules: map['allowlistRules'] == null ? null : pulumi.Input.decodeList<AllowlistCustomAlertRuleResponse>(map['allowlistRules']!, (value) => AllowlistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      denylistRules: map['denylistRules'] == null ? null : pulumi.Input.decodeList<DenylistCustomAlertRuleResponse>(map['denylistRules']!, (value) => DenylistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      thresholdRules: map['thresholdRules'] == null ? null : pulumi.Input.decodeList<ThresholdCustomAlertRuleResponse>(map['thresholdRules']!, (value) => ThresholdCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      timeWindowRules: map['timeWindowRules'] == null ? null : pulumi.Input.decodeList<TimeWindowCustomAlertRuleResponse>(map['timeWindowRules']!, (value) => TimeWindowCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

