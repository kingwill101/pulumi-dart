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
  const AnomalySecurityMLAnalyticsSettingsArgs({
    this.anomalySettingsVersion,
    required this.anomalyVersion,
    this.customizableObservations,
    this.description,
    required this.displayName,
    required this.enabled,
    required this.frequency,
    required this.isDefaultSettings,
    required this.kind,
    this.requiredDataConnectors,
    required this.resourceGroupName,
    this.settingsDefinitionId,
    this.settingsResourceName,
    required this.settingsStatus,
    this.tactics,
    this.techniques,
    required this.workspaceName,
  });

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
      anomalySettingsVersion: (() { final guardedValue = map['anomalySettingsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      anomalyVersion: pulumi.Input.fromValue(map['anomalyVersion'] as String),
      customizableObservations: (() { final guardedValue = map['customizableObservations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      isDefaultSettings: pulumi.Input.fromValue(map['isDefaultSettings'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      requiredDataConnectors: (() { final guardedValue = map['requiredDataConnectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityMLAnalyticsSettingsDataSource>(guardedValue, (value) => SecurityMLAnalyticsSettingsDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      settingsDefinitionId: (() { final guardedValue = map['settingsDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingsResourceName: (() { final guardedValue = map['settingsResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settingsStatus: pulumi.Input.fromValue(map['settingsStatus'] as String),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

