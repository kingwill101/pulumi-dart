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
  final int anomalySettingsVersion;
  /// The anomaly version of the Anomaly Alert Rule.
  final String anomalyVersion;
  /// The description of the threshold observation.
  final String description;
  final String displayName;
  /// Is the Anomaly Alert Rule enabled?
  final bool enabled;
  /// The frequency the Anomaly Alert Rule will be run.
  final String frequency;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String logAnalyticsWorkspaceId;
  final String mode;
  /// A list of `multi_select_observation` blocks as defined below.
  final List<GetAlertRuleAnomalyMultiSelectObservation> multiSelectObservations;
  /// The name of the threshold observation.
  final String name;
  /// A list of `prioritized_exclude_observation` blocks as defined below.
  final List<GetAlertRuleAnomalyPrioritizedExcludeObservation> prioritizedExcludeObservations;
  /// A `required_data_connector` block as defined below.
  final List<GetAlertRuleAnomalyRequiredDataConnector> requiredDataConnectors;
  /// The ID of the anomaly settings definition Id.
  final String settingsDefinitionId;
  /// A list of `single_select_observation` blocks as defined below.
  final List<GetAlertRuleAnomalySingleSelectObservation> singleSelectObservations;
  /// A list of categories of attacks by which to classify the rule.
  final List<String> tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final List<String> techniques;
  /// A list of `threshold_observation` blocks as defined below.
  final List<GetAlertRuleAnomalyThresholdObservation> thresholdObservations;

  /// Creates a new [GetAlertRuleAnomalyResult].
  /// [anomalySettingsVersion] The version of the Anomaly Security ML Analytics Settings.
  /// [anomalyVersion] The anomaly version of the Anomaly Alert Rule.
  /// [description] The description of the threshold observation.
  /// [displayName] Required.
  /// [enabled] Is the Anomaly Alert Rule enabled?
  /// [frequency] The frequency the Anomaly Alert Rule will be run.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logAnalyticsWorkspaceId] Required.
  /// [mode] Required.
  /// [multiSelectObservations] A list of `multi_select_observation` blocks as defined below.
  /// [name] The name of the threshold observation.
  /// [prioritizedExcludeObservations] A list of `prioritized_exclude_observation` blocks as defined below.
  /// [requiredDataConnectors] A `required_data_connector` block as defined below.
  /// [settingsDefinitionId] The ID of the anomaly settings definition Id.
  /// [singleSelectObservations] A list of `single_select_observation` blocks as defined below.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [thresholdObservations] A list of `threshold_observation` blocks as defined below.
  const GetAlertRuleAnomalyResult({
    required this.anomalySettingsVersion,
    required this.anomalyVersion,
    required this.description,
    required this.displayName,
    required this.enabled,
    required this.frequency,
    required this.id,
    required this.logAnalyticsWorkspaceId,
    required this.mode,
    required this.multiSelectObservations,
    required this.name,
    required this.prioritizedExcludeObservations,
    required this.requiredDataConnectors,
    required this.settingsDefinitionId,
    required this.singleSelectObservations,
    required this.tactics,
    required this.techniques,
    required this.thresholdObservations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalySettingsVersion': anomalySettingsVersion,
      'anomalyVersion': anomalyVersion,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'frequency': frequency,
      'id': id,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'mode': mode,
      'multiSelectObservations': pulumi.Input.encodeList<GetAlertRuleAnomalyMultiSelectObservation, Map<String, dynamic>>(multiSelectObservations, (value) => value.toMap()),
      'name': name,
      'prioritizedExcludeObservations': pulumi.Input.encodeList<GetAlertRuleAnomalyPrioritizedExcludeObservation, Map<String, dynamic>>(prioritizedExcludeObservations, (value) => value.toMap()),
      'requiredDataConnectors': pulumi.Input.encodeList<GetAlertRuleAnomalyRequiredDataConnector, Map<String, dynamic>>(requiredDataConnectors, (value) => value.toMap()),
      'settingsDefinitionId': settingsDefinitionId,
      'singleSelectObservations': pulumi.Input.encodeList<GetAlertRuleAnomalySingleSelectObservation, Map<String, dynamic>>(singleSelectObservations, (value) => value.toMap()),
      'tactics': tactics,
      'techniques': techniques,
      'thresholdObservations': pulumi.Input.encodeList<GetAlertRuleAnomalyThresholdObservation, Map<String, dynamic>>(thresholdObservations, (value) => value.toMap()),
    };
  }

  factory GetAlertRuleAnomalyResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyResult(
      anomalySettingsVersion: map['anomalySettingsVersion'] as int,
      anomalyVersion: map['anomalyVersion'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      frequency: map['frequency'] as String,
      id: map['id'] as String,
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      mode: map['mode'] as String,
      multiSelectObservations: pulumi.Input.decodeList<GetAlertRuleAnomalyMultiSelectObservation>(map['multiSelectObservations']!, (value) => GetAlertRuleAnomalyMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      prioritizedExcludeObservations: pulumi.Input.decodeList<GetAlertRuleAnomalyPrioritizedExcludeObservation>(map['prioritizedExcludeObservations']!, (value) => GetAlertRuleAnomalyPrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>())),
      requiredDataConnectors: pulumi.Input.decodeList<GetAlertRuleAnomalyRequiredDataConnector>(map['requiredDataConnectors']!, (value) => GetAlertRuleAnomalyRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>())),
      settingsDefinitionId: map['settingsDefinitionId'] as String,
      singleSelectObservations: pulumi.Input.decodeList<GetAlertRuleAnomalySingleSelectObservation>(map['singleSelectObservations']!, (value) => GetAlertRuleAnomalySingleSelectObservation.fromMap((value as Map).cast<String, dynamic>())),
      tactics: (map['tactics'] as List).cast<String>(),
      techniques: (map['techniques'] as List).cast<String>(),
      thresholdObservations: pulumi.Input.decodeList<GetAlertRuleAnomalyThresholdObservation>(map['thresholdObservations']!, (value) => GetAlertRuleAnomalyThresholdObservation.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

