// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_mlanalytics_settings_data_source.dart';

/// {@template pulumi_securityinsights_anomaly_security_mlanalytics_settings_args_doc}
/// The set of arguments for AnomalySecurityMLAnalyticsSettings.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_anomaly_security_mlanalytics_settings_args_doc}
class AnomalySecurityMLAnalyticsSettingsArgs {
  /// The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  final pulumi.Input<int>? anomalySettingsVersion;
  /// The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  final pulumi.Input<String> anomalyVersion;
  /// The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  final pulumi.Input<dynamic>? customizableObservations;
  /// The description of the SecurityMLAnalyticsSettings.
  final pulumi.Input<String>? description;
  /// The display name for settings created by this SecurityMLAnalyticsSettings.
  final pulumi.Input<String> displayName;
  /// Determines whether this settings is enabled or disabled.
  final pulumi.Input<bool> enabled;
  /// The frequency that this SecurityMLAnalyticsSettings will be run.
  final pulumi.Input<String> frequency;
  /// Determines whether this anomaly security ml analytics settings is a default settings
  final pulumi.Input<bool> isDefaultSettings;
  /// The kind of security ML analytics settings
  /// Expected value is 'Anomaly'.
  final pulumi.Input<String> kind;
  /// The required data sources for this SecurityMLAnalyticsSettings
  final pulumi.Input<List<SecurityMLAnalyticsSettingsDataSource>>? requiredDataConnectors;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The anomaly settings definition Id
  final pulumi.Input<String>? settingsDefinitionId;
  /// Security ML Analytics Settings resource name
  final pulumi.Input<String>? settingsResourceName;
  /// The anomaly SecurityMLAnalyticsSettings status
  final pulumi.Input<String> settingsStatus;
  /// The tactics of the SecurityMLAnalyticsSettings
  final pulumi.Input<List<String>>? tactics;
  /// The techniques of the SecurityMLAnalyticsSettings
  final pulumi.Input<List<String>>? techniques;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AnomalySecurityMLAnalyticsSettingsArgs].
  /// [anomalySettingsVersion] The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  /// [anomalyVersion] The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  /// [customizableObservations] The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  /// [description] The description of the SecurityMLAnalyticsSettings.
  /// [displayName] The display name for settings created by this SecurityMLAnalyticsSettings.
  /// [enabled] Determines whether this settings is enabled or disabled.
  /// [frequency] The frequency that this SecurityMLAnalyticsSettings will be run.
  /// [isDefaultSettings] Determines whether this anomaly security ml analytics settings is a default settings
  /// [kind] The kind of security ML analytics settings
  /// [requiredDataConnectors] The required data sources for this SecurityMLAnalyticsSettings
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [settingsDefinitionId] The anomaly settings definition Id
  /// [settingsResourceName] Security ML Analytics Settings resource name
  /// [settingsStatus] The anomaly SecurityMLAnalyticsSettings status
  /// [tactics] The tactics of the SecurityMLAnalyticsSettings
  /// [techniques] The techniques of the SecurityMLAnalyticsSettings
  /// [workspaceName] The name of the workspace.
  AnomalySecurityMLAnalyticsSettingsArgs({
    pulumi.Output<int>? anomalySettingsVersion,
    required pulumi.Output<String> anomalyVersion,
    pulumi.Output<dynamic>? customizableObservations,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> frequency,
    required pulumi.Output<bool> isDefaultSettings,
    required pulumi.Output<String> kind,
    pulumi.Output<List<SecurityMLAnalyticsSettingsDataSource>>? requiredDataConnectors,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? settingsDefinitionId,
    pulumi.Output<String>? settingsResourceName,
    required pulumi.Output<String> settingsStatus,
    pulumi.Output<List<String>>? tactics,
    pulumi.Output<List<String>>? techniques,
    required pulumi.Output<String> workspaceName,
  }) :
      anomalySettingsVersion = pulumi.Input.asOptionalInput<int>(anomalySettingsVersion),
      anomalyVersion = pulumi.Input.asInput<String>(anomalyVersion),
      customizableObservations = pulumi.Input.asOptionalInput<dynamic>(customizableObservations),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      enabled = pulumi.Input.asInput<bool>(enabled),
      frequency = pulumi.Input.asInput<String>(frequency),
      isDefaultSettings = pulumi.Input.asInput<bool>(isDefaultSettings),
      kind = pulumi.Input.asInput<String>(kind),
      requiredDataConnectors = pulumi.Input.asOptionalInput<List<SecurityMLAnalyticsSettingsDataSource>>(requiredDataConnectors),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settingsDefinitionId = pulumi.Input.asOptionalInput<String>(settingsDefinitionId),
      settingsResourceName = pulumi.Input.asOptionalInput<String>(settingsResourceName),
      settingsStatus = pulumi.Input.asInput<String>(settingsStatus),
      tactics = pulumi.Input.asOptionalInput<List<String>>(tactics),
      techniques = pulumi.Input.asOptionalInput<List<String>>(techniques),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalySettingsVersion': ?anomalySettingsVersion,
      'anomalyVersion': anomalyVersion,
      'customizableObservations': ?customizableObservations,
      'description': ?description,
      'displayName': displayName,
      'enabled': enabled,
      'frequency': frequency,
      'isDefaultSettings': isDefaultSettings,
      'kind': kind,
      'requiredDataConnectors': ?pulumi.Input.mapOptionalInputValue<List<SecurityMLAnalyticsSettingsDataSource>, List<Map<String, dynamic>>>(requiredDataConnectors, (value) => pulumi.Input.encodeList<SecurityMLAnalyticsSettingsDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'settingsDefinitionId': ?settingsDefinitionId,
      'settingsResourceName': ?settingsResourceName,
      'settingsStatus': settingsStatus,
      'tactics': ?tactics,
      'techniques': ?techniques,
      'workspaceName': workspaceName,
    };
  }

  factory AnomalySecurityMLAnalyticsSettingsArgs.fromMap(Map<String, dynamic> map) {
    return AnomalySecurityMLAnalyticsSettingsArgs(
      anomalySettingsVersion: map['anomalySettingsVersion'] == null ? null : pulumi.Output.create<int>(map['anomalySettingsVersion'] as int),
      anomalyVersion: pulumi.Output.create<String>(map['anomalyVersion'] as String),
      customizableObservations: map['customizableObservations'] == null ? null : pulumi.Output.create<dynamic>(map['customizableObservations']),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: pulumi.Output.create<String>(map['frequency'] as String),
      isDefaultSettings: pulumi.Output.create<bool>(map['isDefaultSettings'] as bool),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      requiredDataConnectors: map['requiredDataConnectors'] == null ? null : pulumi.Output.create<List<SecurityMLAnalyticsSettingsDataSource>>(pulumi.Input.decodeList<SecurityMLAnalyticsSettingsDataSource>(map['requiredDataConnectors'], (value) => SecurityMLAnalyticsSettingsDataSource.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settingsDefinitionId: map['settingsDefinitionId'] == null ? null : pulumi.Output.create<String>(map['settingsDefinitionId'] as String),
      settingsResourceName: map['settingsResourceName'] == null ? null : pulumi.Output.create<String>(map['settingsResourceName'] as String),
      settingsStatus: pulumi.Output.create<String>(map['settingsStatus'] as String),
      tactics: map['tactics'] == null ? null : pulumi.Output.create<List<String>>((map['tactics'] as List).cast<String>()),
      techniques: map['techniques'] == null ? null : pulumi.Output.create<List<String>>((map['techniques'] as List).cast<String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

