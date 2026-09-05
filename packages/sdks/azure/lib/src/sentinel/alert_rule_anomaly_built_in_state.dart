// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_anomaly_built_in_multi_select_observation.dart';
import 'alert_rule_anomaly_built_in_prioritized_exclude_observation.dart';
import 'alert_rule_anomaly_built_in_required_data_connector.dart';
import 'alert_rule_anomaly_built_in_single_select_observation.dart';
import 'alert_rule_anomaly_built_in_threshold_observation.dart';

/// Input properties used for looking up and filtering AlertRuleAnomalyBuiltIn resources.
class AlertRuleAnomalyBuiltInState {
  /// The version of the Anomaly Security ML Analytics Settings.
  final pulumi.Input<int?>? anomalySettingsVersion;
  /// The anomaly version of the Anomaly Alert Rule.
  final pulumi.Input<String?>? anomalyVersion;
  /// The description of the threshold observation.
  final pulumi.Input<String?>? description;
  /// The Display Name of the built-in Anomaly Alert Rule.
  ///
  /// &gt; **Note:** One of `name` or `displayName` block must be specified.
  final pulumi.Input<String?>? displayName;
  /// Should the Built-in Anomaly Alert Rule be enabled?
  final pulumi.Input<bool?>? enabled;
  /// The frequency the Anomaly Alert Rule will be run.
  final pulumi.Input<String?>? frequency;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  final pulumi.Input<String?>? logAnalyticsWorkspaceId;
  /// mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  final pulumi.Input<String?>? mode;
  /// A list of `multiSelectObservation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInMultiSelectObservation>?>? multiSelectObservations;
  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String?>? name;
  /// A list of `prioritizedExcludeObservation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>?>? prioritizedExcludeObservations;
  /// A `requiredDataConnector` block as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInRequiredDataConnector>?>? requiredDataConnectors;
  /// The ID of the anomaly settings definition Id.
  final pulumi.Input<String?>? settingsDefinitionId;
  /// A list of `singleSelectObservation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInSingleSelectObservation>?>? singleSelectObservations;
  /// A list of categories of attacks by which to classify the rule.
  final pulumi.Input<List<String>?>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>?>? techniques;
  /// A list of `thresholdObservation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInThresholdObservation>?>? thresholdObservations;

  /// Creates a new [AlertRuleAnomalyBuiltInState].
  /// [anomalySettingsVersion] The version of the Anomaly Security ML Analytics Settings.
  /// [anomalyVersion] The anomaly version of the Anomaly Alert Rule.
  /// [description] The description of the threshold observation.
  /// [displayName] The Display Name of the built-in Anomaly Alert Rule.
  /// [enabled] Should the Built-in Anomaly Alert Rule be enabled?
  /// [frequency] The frequency the Anomaly Alert Rule will be run.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  /// [mode] mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  /// [multiSelectObservations] A list of `multiSelectObservation` blocks as defined below.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [prioritizedExcludeObservations] A list of `prioritizedExcludeObservation` blocks as defined below.
  /// [requiredDataConnectors] A `requiredDataConnector` block as defined below.
  /// [settingsDefinitionId] The ID of the anomaly settings definition Id.
  /// [singleSelectObservations] A list of `singleSelectObservation` blocks as defined below.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [thresholdObservations] A list of `thresholdObservation` blocks as defined below.
  const AlertRuleAnomalyBuiltInState({
    this.anomalySettingsVersion,
    this.anomalyVersion,
    this.description,
    this.displayName,
    this.enabled,
    this.frequency,
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
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'mode': ?mode,
      'multiSelectObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyBuiltInMultiSelectObservation>, List<Map<String, dynamic>>>(multiSelectObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyBuiltInMultiSelectObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'prioritizedExcludeObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>, List<Map<String, dynamic>>>(prioritizedExcludeObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requiredDataConnectors': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyBuiltInRequiredDataConnector>, List<Map<String, dynamic>>>(requiredDataConnectors, (value) => pulumi.Input.encodeList<AlertRuleAnomalyBuiltInRequiredDataConnector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'settingsDefinitionId': ?settingsDefinitionId,
      'singleSelectObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyBuiltInSingleSelectObservation>, List<Map<String, dynamic>>>(singleSelectObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyBuiltInSingleSelectObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'thresholdObservations': ?pulumi.Input.mapOptionalInputValue<List<AlertRuleAnomalyBuiltInThresholdObservation>, List<Map<String, dynamic>>>(thresholdObservations, (value) => pulumi.Input.encodeList<AlertRuleAnomalyBuiltInThresholdObservation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertRuleAnomalyBuiltInState.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInState(
      anomalySettingsVersion: (() { final guardedValue = map['anomalySettingsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      anomalyVersion: (() { final guardedValue = map['anomalyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiSelectObservations: (() { final guardedValue = map['multiSelectObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInMultiSelectObservation>(guardedValue, (value) => AlertRuleAnomalyBuiltInMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prioritizedExcludeObservations: (() { final guardedValue = map['prioritizedExcludeObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>(guardedValue, (value) => AlertRuleAnomalyBuiltInPrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requiredDataConnectors: (() { final guardedValue = map['requiredDataConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInRequiredDataConnector>(guardedValue, (value) => AlertRuleAnomalyBuiltInRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>()))); })(),
      settingsDefinitionId: (() { final guardedValue = map['settingsDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSelectObservations: (() { final guardedValue = map['singleSelectObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInSingleSelectObservation>(guardedValue, (value) => AlertRuleAnomalyBuiltInSingleSelectObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      thresholdObservations: (() { final guardedValue = map['thresholdObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInThresholdObservation>(guardedValue, (value) => AlertRuleAnomalyBuiltInThresholdObservation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
