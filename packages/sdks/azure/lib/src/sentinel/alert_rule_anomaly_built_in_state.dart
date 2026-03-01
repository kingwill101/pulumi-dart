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
  final pulumi.Input<int>? anomalySettingsVersion;
  /// The anomaly version of the Anomaly Alert Rule.
  final pulumi.Input<String>? anomalyVersion;
  /// The description of the threshold observation.
  final pulumi.Input<String>? description;
  /// The Display Name of the built-in Anomaly Alert Rule.
  ///
  /// > **Note:** One of `name` or `display_name` block must be specified.
  final pulumi.Input<String>? displayName;
  /// Should the Built-in Anomaly Alert Rule be enabled?
  final pulumi.Input<bool>? enabled;
  /// The frequency the Anomaly Alert Rule will be run.
  final pulumi.Input<String>? frequency;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  final pulumi.Input<String>? logAnalyticsWorkspaceId;
  /// mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  final pulumi.Input<String>? mode;
  /// A list of `multi_select_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInMultiSelectObservation>>? multiSelectObservations;
  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String>? name;
  /// A list of `prioritized_exclude_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>>? prioritizedExcludeObservations;
  /// A `required_data_connector` block as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInRequiredDataConnector>>? requiredDataConnectors;
  /// The ID of the anomaly settings definition Id.
  final pulumi.Input<String>? settingsDefinitionId;
  /// A list of `single_select_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInSingleSelectObservation>>? singleSelectObservations;
  /// A list of categories of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? tactics;
  /// A list of techniques of attacks by which to classify the rule.
  final pulumi.Input<List<String>>? techniques;
  /// A list of `threshold_observation` blocks as defined below.
  final pulumi.Input<List<AlertRuleAnomalyBuiltInThresholdObservation>>? thresholdObservations;

  /// Creates a new [AlertRuleAnomalyBuiltInState].
  /// [anomalySettingsVersion] The version of the Anomaly Security ML Analytics Settings.
  /// [anomalyVersion] The anomaly version of the Anomaly Alert Rule.
  /// [description] The description of the threshold observation.
  /// [displayName] The Display Name of the built-in Anomaly Alert Rule.
  /// [enabled] Should the Built-in Anomaly Alert Rule be enabled?
  /// [frequency] The frequency the Anomaly Alert Rule will be run.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  /// [mode] mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  /// [multiSelectObservations] A list of `multi_select_observation` blocks as defined below.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  /// [prioritizedExcludeObservations] A list of `prioritized_exclude_observation` blocks as defined below.
  /// [requiredDataConnectors] A `required_data_connector` block as defined below.
  /// [settingsDefinitionId] The ID of the anomaly settings definition Id.
  /// [singleSelectObservations] A list of `single_select_observation` blocks as defined below.
  /// [tactics] A list of categories of attacks by which to classify the rule.
  /// [techniques] A list of techniques of attacks by which to classify the rule.
  /// [thresholdObservations] A list of `threshold_observation` blocks as defined below.
  AlertRuleAnomalyBuiltInState({
    pulumi.Output<int>? anomalySettingsVersion,
    pulumi.Output<String>? anomalyVersion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? frequency,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? mode,
    pulumi.Output<List<AlertRuleAnomalyBuiltInMultiSelectObservation>>? multiSelectObservations,
    pulumi.Output<String>? name,
    pulumi.Output<List<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>>? prioritizedExcludeObservations,
    pulumi.Output<List<AlertRuleAnomalyBuiltInRequiredDataConnector>>? requiredDataConnectors,
    pulumi.Output<String>? settingsDefinitionId,
    pulumi.Output<List<AlertRuleAnomalyBuiltInSingleSelectObservation>>? singleSelectObservations,
    pulumi.Output<List<String>>? tactics,
    pulumi.Output<List<String>>? techniques,
    pulumi.Output<List<AlertRuleAnomalyBuiltInThresholdObservation>>? thresholdObservations,
  }) :
      anomalySettingsVersion = pulumi.Input.asOptionalInput<int>(anomalySettingsVersion),
      anomalyVersion = pulumi.Input.asOptionalInput<String>(anomalyVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      multiSelectObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyBuiltInMultiSelectObservation>>(multiSelectObservations),
      name = pulumi.Input.asOptionalInput<String>(name),
      prioritizedExcludeObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>>(prioritizedExcludeObservations),
      requiredDataConnectors = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyBuiltInRequiredDataConnector>>(requiredDataConnectors),
      settingsDefinitionId = pulumi.Input.asOptionalInput<String>(settingsDefinitionId),
      singleSelectObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyBuiltInSingleSelectObservation>>(singleSelectObservations),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques),
      thresholdObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyBuiltInThresholdObservation>>(thresholdObservations);

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
      anomalySettingsVersion: map['anomalySettingsVersion'] == null ? null : pulumi.Output.create<int>(map['anomalySettingsVersion'] as int),
      anomalyVersion: map['anomalyVersion'] == null ? null : pulumi.Output.create<String>(map['anomalyVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      multiSelectObservations: map['multiSelectObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyBuiltInMultiSelectObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInMultiSelectObservation>(map['multiSelectObservations'], (value) => AlertRuleAnomalyBuiltInMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      prioritizedExcludeObservations: map['prioritizedExcludeObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInPrioritizedExcludeObservation>(map['prioritizedExcludeObservations'], (value) => AlertRuleAnomalyBuiltInPrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>()))),
      requiredDataConnectors: map['requiredDataConnectors'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyBuiltInRequiredDataConnector>>(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInRequiredDataConnector>(map['requiredDataConnectors'], (value) => AlertRuleAnomalyBuiltInRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>()))),
      settingsDefinitionId: map['settingsDefinitionId'] == null ? null : pulumi.Output.create<String>(map['settingsDefinitionId'] as String),
      singleSelectObservations: map['singleSelectObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyBuiltInSingleSelectObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInSingleSelectObservation>(map['singleSelectObservations'], (value) => AlertRuleAnomalyBuiltInSingleSelectObservation.fromMap((value as Map).cast<String, dynamic>()))),
      tactics: map['tactics'] == null ? null : pulumi.Output.create<List<String>>((map['tactics'] as List).cast<String>()),
      techniques: map['techniques'] == null ? null : pulumi.Output.create<List<String>>((map['techniques'] as List).cast<String>()),
      thresholdObservations: map['thresholdObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyBuiltInThresholdObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyBuiltInThresholdObservation>(map['thresholdObservations'], (value) => AlertRuleAnomalyBuiltInThresholdObservation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

