// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_anomaly_duplicate_multi_select_observation.dart';
import 'alert_rule_anomaly_duplicate_prioritized_exclude_observation.dart';
import 'alert_rule_anomaly_duplicate_required_data_connector.dart';
import 'alert_rule_anomaly_duplicate_single_select_observation.dart';
import 'alert_rule_anomaly_duplicate_threshold_observation.dart';

/// Input properties used for looking up and filtering AlertRuleAnomalyDuplicate resources.
class AlertRuleAnomalyDuplicateState {
  /// The version of the Anomaly Security ML Analytics Settings.
  final pulumi.Input<int>? anomalySettingsVersion;
  /// The anomaly version of the Anomaly Alert Rule.
  final pulumi.Input<String>? anomalyVersion;
  /// The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  final pulumi.Input<String>? builtInRuleId;
  /// The description of the Anomaly Alert Rule.
  final pulumi.Input<String>? description;
  /// The Display Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String>? displayName;
  /// Should the Duplicated Anomaly Alert Rule be enabled?
  final pulumi.Input<bool>? enabled;
  /// The frequency the Anomaly Alert Rule will be run, such as "P1D".
  final pulumi.Input<String>? frequency;
  /// Whether the current settings of the Anomaly Alert Rule equals default settings.
  final pulumi.Input<bool>? isDefaultSettings;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  final pulumi.Input<String>? mode;
  /// A list of `multi_select_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateMultiSelectObservation>>? multiSelectObservations;
  final pulumi.Input<String>? name;
  /// A list of `prioritized_exclude_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>>? prioritizedExcludeObservations;
  /// A `required_data_connector` block as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateRequiredDataConnector>>? requiredDataConnectors;
  /// The ID of the anomaly settings definition Id.
  final pulumi.Input<String>? settingsDefinitionId;
  /// A list of `single_select_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateSingleSelectObservation>>? singleSelectObservations;
  /// A list of categories of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? techniques;
  /// A list of `threshold_observation` blocks as defined below.
  ///
  /// > **Note:** un-specified `multi_select_observation`, `single_select_observation`, `prioritized_exclude_observation` and `threshold_observation` will be inherited from the built-in Anomaly Alert Rule.
  final pulumi.Input<List<AlertRuleAnomalyDuplicateThresholdObservation>>? thresholdObservations;

  /// Creates a new [AlertRuleAnomalyDuplicateState].
  /// [anomalySettingsVersion] The version of the Anomaly Security ML Analytics Settings.
  /// [anomalyVersion] The anomaly version of the Anomaly Alert Rule.
  /// [builtInRuleId] The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  /// [description] The description of the Anomaly Alert Rule.
  /// [displayName] The Display Name of the built-in Anomaly Alert Rule.
  /// [enabled] Should the Duplicated Anomaly Alert Rule be enabled?
  /// [frequency] The frequency the Anomaly Alert Rule will be run, such as "P1D".
  /// [isDefaultSettings] Whether the current settings of the Anomaly Alert Rule equals default settings.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created.
  /// [mode] mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  /// [multiSelectObservations] A list of `multi_select_observation` blocks as defined below.
  /// [name] Optional.
  /// [prioritizedExcludeObservations] A list of `prioritized_exclude_observation` blocks as defined below.
  /// [requiredDataConnectors] A `required_data_connector` block as defined below.
  /// [settingsDefinitionId] The ID of the anomaly settings definition Id.
  /// [singleSelectObservations] A list of `single_select_observation` blocks as defined below.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [thresholdObservations] A list of `threshold_observation` blocks as defined below.
  AlertRuleAnomalyDuplicateState({
    this.anomalySettingsVersion,
    this.anomalyVersion,
    this.builtInRuleId,
    this.description,
    this.displayName,
    this.enabled,
    this.frequency,
    this.isDefaultSettings,
    this.logAnalyticsWorkspaceId,
    this.mode,
    this.multiSelectObservations,
    this.name,
    this.prioritizedExcludeObservations,
    this.requiredDataConnectors,
    this.settingsDefinitionId,
    this.singleSelectObservations,
    this.tactics,
    this.techniques,
    this.thresholdObservations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalySettingsVersion': ?anomalySettingsVersion,
      'anomalyVersion': ?anomalyVersion,
      'builtInRuleId': ?builtInRuleId,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'isDefaultSettings': ?isDefaultSettings,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'mode': ?mode,
      'multiSelectObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateMultiSelectObservation>, List<Map<String, dynamic>>>(multiSelectObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateMultiSelectObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'prioritizedExcludeObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>, List<Map<String, dynamic>>>(prioritizedExcludeObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requiredDataConnectors': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateRequiredDataConnector>, List<Map<String, dynamic>>>(requiredDataConnectors, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateRequiredDataConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'settingsDefinitionId': ?settingsDefinitionId,
      'singleSelectObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateSingleSelectObservation>, List<Map<String, dynamic>>>(singleSelectObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateSingleSelectObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'thresholdObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyDuplicateThresholdObservation>, List<Map<String, dynamic>>>(thresholdObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyDuplicateThresholdObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleAnomalyDuplicateState.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyDuplicateState(
      anomalySettingsVersion: map['anomalySettingsVersion'] == null ? null : (map['anomalySettingsVersion']! as int).input(),
      anomalyVersion: map['anomalyVersion'] == null ? null : (map['anomalyVersion']! as String).input(),
      builtInRuleId: map['builtInRuleId'] == null ? null : (map['builtInRuleId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      frequency: map['frequency'] == null ? null : (map['frequency']! as String).input(),
      isDefaultSettings: map['isDefaultSettings'] == null ? null : (map['isDefaultSettings']! as bool).input(),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : (map['logAnalyticsWorkspaceId']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      multiSelectObservations: map['multiSelectObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateMultiSelectObservation>(map['multiSelectObservations']!, (value) => AlertRuleAnomalyDuplicateMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      prioritizedExcludeObservations: map['prioritizedExcludeObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>(map['prioritizedExcludeObservations']!, (value) => AlertRuleAnomalyDuplicatePrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requiredDataConnectors: map['requiredDataConnectors'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateRequiredDataConnector>(map['requiredDataConnectors']!, (value) => AlertRuleAnomalyDuplicateRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      settingsDefinitionId: map['settingsDefinitionId'] == null ? null : (map['settingsDefinitionId']! as String).input(),
      singleSelectObservations: map['singleSelectObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateSingleSelectObservation>(map['singleSelectObservations']!, (value) => AlertRuleAnomalyDuplicateSingleSelectObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tactics: map['tactics'] == null ? null : ((map['tactics']! as List).cast<String>()).input(),
      techniques: map['techniques'] == null ? null : ((map['techniques']! as List).cast<String>()).input(),
      thresholdObservations: map['thresholdObservations'] == null ? null : (pulumi.Input.decodeList<AlertRuleAnomalyDuplicateThresholdObservation>(map['thresholdObservations']!, (value) => AlertRuleAnomalyDuplicateThresholdObservation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

