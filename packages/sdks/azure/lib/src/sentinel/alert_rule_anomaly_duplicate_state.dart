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
  /// &gt; **Note:** un-specified `multi_select_observation`, `single_select_observation`, `prioritized_exclude_observation` and `threshold_observation` will be inherited from the built-in Anomaly Alert Rule.
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
  const AlertRuleAnomalyDuplicateState({
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
      anomalySettingsVersion: (() { final guardedValue = map['anomalySettingsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      anomalyVersion: (() { final guardedValue = map['anomalyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builtInRuleId: (() { final guardedValue = map['builtInRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefaultSettings: (() { final guardedValue = map['isDefaultSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiSelectObservations: (() { final guardedValue = map['multiSelectObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateMultiSelectObservation>(guardedValue, (value) => AlertRuleAnomalyDuplicateMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prioritizedExcludeObservations: (() { final guardedValue = map['prioritizedExcludeObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>(guardedValue, (value) => AlertRuleAnomalyDuplicatePrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requiredDataConnectors: (() { final guardedValue = map['requiredDataConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateRequiredDataConnector>(guardedValue, (value) => AlertRuleAnomalyDuplicateRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      settingsDefinitionId: (() { final guardedValue = map['settingsDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSelectObservations: (() { final guardedValue = map['singleSelectObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateSingleSelectObservation>(guardedValue, (value) => AlertRuleAnomalyDuplicateSingleSelectObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      thresholdObservations: (() { final guardedValue = map['thresholdObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateThresholdObservation>(guardedValue, (value) => AlertRuleAnomalyDuplicateThresholdObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

