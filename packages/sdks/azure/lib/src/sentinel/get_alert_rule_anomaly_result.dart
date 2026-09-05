// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_rule_anomaly_multi_select_observation.dart';
import 'get_alert_rule_anomaly_prioritized_exclude_observation.dart';
import 'get_alert_rule_anomaly_required_data_connector.dart';
import 'get_alert_rule_anomaly_single_select_observation.dart';
import 'get_alert_rule_anomaly_threshold_observation.dart';

/// Result data returned by getAlertRuleAnomaly.
class GetAlertRuleAnomalyResult {
  /// The version of the Anomaly Security ML Analytics Settings.
  final int? anomalySettingsVersion;
  /// The anomaly version of the Anomaly Alert Rule.
  final String? anomalyVersion;
  /// The description of the threshold observation.
  final String? description;
  final String? displayName;
  /// Is the Anomaly Alert Rule enabled?
  final bool? enabled;
  /// The frequency the Anomaly Alert Rule will be run.
  final String? frequency;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? logAnalyticsWorkspaceId;
  final String? mode;
  /// A list of `multiSelectObservation` blocks as defined below.
  final List<GetAlertRuleAnomalyMultiSelectObservation>? multiSelectObservations;
  /// The name of the threshold observation.
  final String? name;
  /// A list of `prioritizedExcludeObservation` blocks as defined below.
  final List<GetAlertRuleAnomalyPrioritizedExcludeObservation>? prioritizedExcludeObservations;
  /// A `requiredDataConnector` block as defined below.
  final List<GetAlertRuleAnomalyRequiredDataConnector>? requiredDataConnectors;
  /// The ID of the anomaly settings definition Id.
  final String? settingsDefinitionId;
  /// A list of `singleSelectObservation` blocks as defined below.
  final List<GetAlertRuleAnomalySingleSelectObservation>? singleSelectObservations;
  /// A list of categories of attacks by which to classify the rule.
  final List<String>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final List<String>? techniques;
  /// A list of `thresholdObservation` blocks as defined below.
  final List<GetAlertRuleAnomalyThresholdObservation>? thresholdObservations;

  /// Creates a new [GetAlertRuleAnomalyResult].
  /// [anomalySettingsVersion] The version of the Anomaly Security ML Analytics Settings.
  /// [anomalyVersion] The anomaly version of the Anomaly Alert Rule.
  /// [description] The description of the threshold observation.
  /// [displayName] Optional.
  /// [enabled] Is the Anomaly Alert Rule enabled?
  /// [frequency] The frequency the Anomaly Alert Rule will be run.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logAnalyticsWorkspaceId] Optional.
  /// [mode] Optional.
  /// [multiSelectObservations] A list of `multiSelectObservation` blocks as defined below.
  /// [name] The name of the threshold observation.
  /// [prioritizedExcludeObservations] A list of `prioritizedExcludeObservation` blocks as defined below.
  /// [requiredDataConnectors] A `requiredDataConnector` block as defined below.
  /// [settingsDefinitionId] The ID of the anomaly settings definition Id.
  /// [singleSelectObservations] A list of `singleSelectObservation` blocks as defined below.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [thresholdObservations] A list of `thresholdObservation` blocks as defined below.
  const GetAlertRuleAnomalyResult({
    this.anomalySettingsVersion,
    this.anomalyVersion,
    this.description,
    this.displayName,
    this.enabled,
    this.frequency,
    this.id,
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
      'id': ?id,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'mode': ?mode,
      'multiSelectObservations': ?(() { final guardedValue = multiSelectObservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleAnomalyMultiSelectObservation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'prioritizedExcludeObservations': ?(() { final guardedValue = prioritizedExcludeObservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleAnomalyPrioritizedExcludeObservation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'requiredDataConnectors': ?(() { final guardedValue = requiredDataConnectors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleAnomalyRequiredDataConnector, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'settingsDefinitionId': ?settingsDefinitionId,
      'singleSelectObservations': ?(() { final guardedValue = singleSelectObservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleAnomalySingleSelectObservation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'thresholdObservations': ?(() { final guardedValue = thresholdObservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleAnomalyThresholdObservation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAlertRuleAnomalyResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyResult(
      anomalySettingsVersion: (() { final guardedValue = map['anomalySettingsVersion']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      anomalyVersion: (() { final guardedValue = map['anomalyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiSelectObservations: (() { final guardedValue = map['multiSelectObservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleAnomalyMultiSelectObservation>(guardedValue, (value) => GetAlertRuleAnomalyMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prioritizedExcludeObservations: (() { final guardedValue = map['prioritizedExcludeObservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleAnomalyPrioritizedExcludeObservation>(guardedValue, (value) => GetAlertRuleAnomalyPrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>())); })(),
      requiredDataConnectors: (() { final guardedValue = map['requiredDataConnectors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleAnomalyRequiredDataConnector>(guardedValue, (value) => GetAlertRuleAnomalyRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>())); })(),
      settingsDefinitionId: (() { final guardedValue = map['settingsDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      singleSelectObservations: (() { final guardedValue = map['singleSelectObservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleAnomalySingleSelectObservation>(guardedValue, (value) => GetAlertRuleAnomalySingleSelectObservation.fromMap((value as Map).cast<String, dynamic>())); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      thresholdObservations: (() { final guardedValue = map['thresholdObservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleAnomalyThresholdObservation>(guardedValue, (value) => GetAlertRuleAnomalyThresholdObservation.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
