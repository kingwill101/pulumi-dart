// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_anomaly_duplicate_multi_select_observation.dart';
import 'alert_rule_anomaly_duplicate_prioritized_exclude_observation.dart';
import 'alert_rule_anomaly_duplicate_single_select_observation.dart';
import 'alert_rule_anomaly_duplicate_threshold_observation.dart';

/// {@template pulumi_sentinel_alert_rule_anomaly_duplicate_alert_rule_anomaly_duplicate_args_doc}
/// The set of arguments for AlertRuleAnomalyDuplicate.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_anomaly_duplicate_alert_rule_anomaly_duplicate_args_doc}
class AlertRuleAnomalyDuplicateArgs {
  /// The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  final pulumi.Input<String> builtInRuleId;
  /// The Display Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String> displayName;
  /// Should the Duplicated Anomaly Alert Rule be enabled?
  final pulumi.Input<bool> enabled;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  final pulumi.Input<String> mode;
  /// A list of `multi_select_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateMultiSelectObservation>>? multiSelectObservations;
  /// A list of `prioritized_exclude_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>>? prioritizedExcludeObservations;
  /// A list of `single_select_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateSingleSelectObservation>>? singleSelectObservations;
  /// A list of `threshold_observation` blocks as defined below.
  ///
  /// > **Note:** un-specified `multi_select_observation`, `single_select_observation`, `prioritized_exclude_observation` and `threshold_observation` will be inherited from the built-in Anomaly Alert Rule.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateThresholdObservation>>? thresholdObservations;

  /// Creates a new [AlertRuleAnomalyDuplicateArgs].
  /// [builtInRuleId] The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  /// [displayName] The Display Name of the built-in Anomaly Alert Rule.
  /// [enabled] Should the Duplicated Anomaly Alert Rule be enabled?
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  /// [mode] mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  /// [multiSelectObservations] A list of `multi_select_observation` blocks as defined below.
  /// [prioritizedExcludeObservations] A list of `prioritized_exclude_observation` blocks as defined below.
  /// [singleSelectObservations] A list of `single_select_observation` blocks as defined below.
  /// [thresholdObservations] A list of `threshold_observation` blocks as defined below.
  AlertRuleAnomalyDuplicateArgs({
    required this.builtInRuleId,
    required this.displayName,
    required this.enabled,
    required this.logAnalyticsWorkspaceId,
    required this.mode,
    this.multiSelectObservations,
    this.prioritizedExcludeObservations,
    this.singleSelectObservations,
    this.thresholdObservations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInRuleId': builtInRuleId,
      'displayName': displayName,
      'enabled': enabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'mode': mode,
      'multiSelectObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateMultiSelectObservation>, List<Map<String, dynamic>>>(multiSelectObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateMultiSelectObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prioritizedExcludeObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>, List<Map<String, dynamic>>>(prioritizedExcludeObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'singleSelectObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateSingleSelectObservation>, List<Map<String, dynamic>>>(singleSelectObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateSingleSelectObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'thresholdObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateThresholdObservation>, List<Map<String, dynamic>>>(thresholdObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateThresholdObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleAnomalyDuplicateArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicateArgs(
      builtInRuleId: (map['builtInRuleId'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      mode: (map['mode'] as String).input(),
      multiSelectObservations: map['multiSelectObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateMultiSelectObservation>(map['multiSelectObservations']!, (value) => AlertRuleAnomalyDuplicateMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prioritizedExcludeObservations: map['prioritizedExcludeObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>(map['prioritizedExcludeObservations']!, (value) => AlertRuleAnomalyDuplicatePrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      singleSelectObservations: map['singleSelectObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateSingleSelectObservation>(map['singleSelectObservations']!, (value) => AlertRuleAnomalyDuplicateSingleSelectObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      thresholdObservations: map['thresholdObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateThresholdObservation>(map['thresholdObservations']!, (value) => AlertRuleAnomalyDuplicateThresholdObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

