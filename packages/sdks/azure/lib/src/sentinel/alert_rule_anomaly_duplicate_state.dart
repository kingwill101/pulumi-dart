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
    pulumi.Output<int>? anomalySettingsVersion,
    pulumi.Output<String>? anomalyVersion,
    pulumi.Output<String>? builtInRuleId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? frequency,
    pulumi.Output<bool>? isDefaultSettings,
    pulumi.Output<String>? logAnalyticsWorkspaceId,
    pulumi.Output<String>? mode,
    pulumi.Output<List<AlertRuleAnomalyDuplicateMultiSelectObservation>>? multiSelectObservations,
    pulumi.Output<String>? name,
    pulumi.Output<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>>? prioritizedExcludeObservations,
    pulumi.Output<List<AlertRuleAnomalyDuplicateRequiredDataConnector>>? requiredDataConnectors,
    pulumi.Output<String>? settingsDefinitionId,
    pulumi.Output<List<AlertRuleAnomalyDuplicateSingleSelectObservation>>? singleSelectObservations,
    pulumi.Output<List<String>>? tactics,
    pulumi.Output<List<String>>? techniques,
    pulumi.Output<List<AlertRuleAnomalyDuplicateThresholdObservation>>? thresholdObservations,
  }) :
      anomalySettingsVersion = pulumi.Input.asOptionalInput<int>(anomalySettingsVersion),
      anomalyVersion = pulumi.Input.asOptionalInput<String>(anomalyVersion),
      builtInRuleId = pulumi.Input.asOptionalInput<String>(builtInRuleId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      isDefaultSettings = pulumi.Input.asOptionalInput<bool>(isDefaultSettings),
      logAnalyticsWorkspaceId = pulumi.Input.asOptionalInput<String>(logAnalyticsWorkspaceId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      multiSelectObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyDuplicateMultiSelectObservation>>(multiSelectObservations),
      name = pulumi.Input.asOptionalInput<String>(name),
      prioritizedExcludeObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>>(prioritizedExcludeObservations),
      requiredDataConnectors = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyDuplicateRequiredDataConnector>>(requiredDataConnectors),
      settingsDefinitionId = pulumi.Input.asOptionalInput<String>(settingsDefinitionId),
      singleSelectObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyDuplicateSingleSelectObservation>>(singleSelectObservations),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques),
      thresholdObservations = pulumi.Input.asOptionalInput<List<AlertRuleAnomalyDuplicateThresholdObservation>>(thresholdObservations);

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
      anomalySettingsVersion: map['anomalySettingsVersion'] == null ? null : pulumi.Output.create<int>(map['anomalySettingsVersion'] as int),
      anomalyVersion: map['anomalyVersion'] == null ? null : pulumi.Output.create<String>(map['anomalyVersion'] as String),
      builtInRuleId: map['builtInRuleId'] == null ? null : pulumi.Output.create<String>(map['builtInRuleId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      isDefaultSettings: map['isDefaultSettings'] == null ? null : pulumi.Output.create<bool>(map['isDefaultSettings'] as bool),
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      multiSelectObservations: map['multiSelectObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyDuplicateMultiSelectObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateMultiSelectObservation>(map['multiSelectObservations'], (value) => AlertRuleAnomalyDuplicateMultiSelectObservation.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      prioritizedExcludeObservations: map['prioritizedExcludeObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyDuplicatePrioritizedExcludeObservation>(map['prioritizedExcludeObservations'], (value) => AlertRuleAnomalyDuplicatePrioritizedExcludeObservation.fromMap((value as Map).cast<String, dynamic>()))),
      requiredDataConnectors: map['requiredDataConnectors'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyDuplicateRequiredDataConnector>>(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateRequiredDataConnector>(map['requiredDataConnectors'], (value) => AlertRuleAnomalyDuplicateRequiredDataConnector.fromMap((value as Map).cast<String, dynamic>()))),
      settingsDefinitionId: map['settingsDefinitionId'] == null ? null : pulumi.Output.create<String>(map['settingsDefinitionId'] as String),
      singleSelectObservations: map['singleSelectObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyDuplicateSingleSelectObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateSingleSelectObservation>(map['singleSelectObservations'], (value) => AlertRuleAnomalyDuplicateSingleSelectObservation.fromMap((value as Map).cast<String, dynamic>()))),
      tactics: map['tactics'] == null ? null : pulumi.Output.create<List<String>>((map['tactics'] as List).cast<String>()),
      techniques: map['techniques'] == null ? null : pulumi.Output.create<List<String>>((map['techniques'] as List).cast<String>()),
      thresholdObservations: map['thresholdObservations'] == null ? null : pulumi.Output.create<List<AlertRuleAnomalyDuplicateThresholdObservation>>(pulumi.Input.decodeList<AlertRuleAnomalyDuplicateThresholdObservation>(map['thresholdObservations'], (value) => AlertRuleAnomalyDuplicateThresholdObservation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

