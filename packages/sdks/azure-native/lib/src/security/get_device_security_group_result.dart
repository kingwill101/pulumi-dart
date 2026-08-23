// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowlist_custom_alert_rule_response.dart';
import 'denylist_custom_alert_rule_response.dart';
import 'system_data_response.dart';
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
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The list of custom alert threshold rules.
  final List<ThresholdCustomAlertRuleResponse>? thresholdRules;
  /// The list of custom alert time-window rules.
  final List<TimeWindowCustomAlertRuleResponse>? timeWindowRules;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeviceSecurityGroupResult].
  /// [allowlistRules] The allow-list custom alert rules.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [denylistRules] The deny-list custom alert rules.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [thresholdRules] The list of custom alert threshold rules.
  /// [timeWindowRules] The list of custom alert time-window rules.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDeviceSecurityGroupResult({
    this.allowlistRules,
    required this.azureApiVersion,
    this.denylistRules,
    required this.id,
    required this.name,
    required this.systemData,
    this.thresholdRules,
    this.timeWindowRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistRules': ?(() { final guardedValue = allowlistRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<AllowlistCustomAlertRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'denylistRules': ?(() { final guardedValue = denylistRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<DenylistCustomAlertRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'thresholdRules': ?(() { final guardedValue = thresholdRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<ThresholdCustomAlertRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'timeWindowRules': ?(() { final guardedValue = timeWindowRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<TimeWindowCustomAlertRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
    };
  }

  factory GetDeviceSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceSecurityGroupResult(
      allowlistRules: (() { final guardedValue = map['allowlistRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AllowlistCustomAlertRuleResponse>(guardedValue, (value) => AllowlistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      denylistRules: (() { final guardedValue = map['denylistRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenylistCustomAlertRuleResponse>(guardedValue, (value) => DenylistCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      thresholdRules: (() { final guardedValue = map['thresholdRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ThresholdCustomAlertRuleResponse>(guardedValue, (value) => ThresholdCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      timeWindowRules: (() { final guardedValue = map['timeWindowRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TimeWindowCustomAlertRuleResponse>(guardedValue, (value) => TimeWindowCustomAlertRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}
