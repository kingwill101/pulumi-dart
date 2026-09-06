// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_mlanalytics_settings_data_source_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAnomalySecurityMLAnalyticsSettings.
class GetAnomalySecurityMLAnalyticsSettingsResult {
  /// The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  final int? anomalySettingsVersion;
  /// The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  final String? anomalyVersion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  final dynamic customizableObservations;
  /// The description of the SecurityMLAnalyticsSettings.
  final String? description;
  /// The display name for settings created by this SecurityMLAnalyticsSettings.
  final String? displayName;
  /// Determines whether this settings is enabled or disabled.
  final bool? enabled;
  /// Etag of the azure resource
  final String? etag;
  /// The frequency that this SecurityMLAnalyticsSettings will be run.
  final String? frequency;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Determines whether this anomaly security ml analytics settings is a default settings
  final bool? isDefaultSettings;
  /// The kind of security ML analytics settings
  /// Expected value is 'Anomaly'.
  final String? kind;
  /// The last time that this SecurityMLAnalyticsSettings has been modified.
  final String? lastModifiedUtc;
  /// The name of the resource
  final String? name;
  /// The required data sources for this SecurityMLAnalyticsSettings
  final List<SecurityMLAnalyticsSettingsDataSourceResponse>? requiredDataConnectors;
  /// The anomaly settings definition Id
  final String? settingsDefinitionId;
  /// The anomaly SecurityMLAnalyticsSettings status
  final String? settingsStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tactics of the SecurityMLAnalyticsSettings
  final List<String>? tactics;
  /// The techniques of the SecurityMLAnalyticsSettings
  final List<String>? techniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAnomalySecurityMLAnalyticsSettingsResult].
  /// [anomalySettingsVersion] The anomaly settings version of the Anomaly security ml analytics settings that dictates whether job version gets updated or not.
  /// [anomalyVersion] The anomaly version of the AnomalySecurityMLAnalyticsSettings.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customizableObservations] The customizable observations of the AnomalySecurityMLAnalyticsSettings.
  /// [description] The description of the SecurityMLAnalyticsSettings.
  /// [displayName] The display name for settings created by this SecurityMLAnalyticsSettings.
  /// [enabled] Determines whether this settings is enabled or disabled.
  /// [etag] Etag of the azure resource
  /// [frequency] The frequency that this SecurityMLAnalyticsSettings will be run.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDefaultSettings] Determines whether this anomaly security ml analytics settings is a default settings
  /// [kind] The kind of security ML analytics settings
  /// [lastModifiedUtc] The last time that this SecurityMLAnalyticsSettings has been modified.
  /// [name] The name of the resource
  /// [requiredDataConnectors] The required data sources for this SecurityMLAnalyticsSettings
  /// [settingsDefinitionId] The anomaly settings definition Id
  /// [settingsStatus] The anomaly SecurityMLAnalyticsSettings status
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tactics] The tactics of the SecurityMLAnalyticsSettings
  /// [techniques] The techniques of the SecurityMLAnalyticsSettings
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAnomalySecurityMLAnalyticsSettingsResult({
    this.anomalySettingsVersion,
    this.anomalyVersion,
    this.azureApiVersion,
    this.customizableObservations,
    this.description,
    this.displayName,
    this.enabled,
    this.etag,
    this.frequency,
    this.id,
    this.isDefaultSettings,
    this.kind,
    this.lastModifiedUtc,
    this.name,
    this.requiredDataConnectors,
    this.settingsDefinitionId,
    this.settingsStatus,
    this.systemData,
    this.tactics,
    this.techniques,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anomalySettingsVersion': ?anomalySettingsVersion,
      'anomalyVersion': ?anomalyVersion,
      'azureApiVersion': ?azureApiVersion,
      'customizableObservations': ?customizableObservations,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'etag': ?etag,
      'frequency': ?frequency,
      'id': ?id,
      'isDefaultSettings': ?isDefaultSettings,
      'kind': ?kind,
      'lastModifiedUtc': ?lastModifiedUtc,
      'name': ?name,
      'requiredDataConnectors': ?(() { final guardedValue = requiredDataConnectors; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecurityMLAnalyticsSettingsDataSourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'settingsDefinitionId': ?settingsDefinitionId,
      'settingsStatus': ?settingsStatus,
      'systemData': ?systemData?.toMap(),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'type': ?type,
    };
  }

  factory GetAnomalySecurityMLAnalyticsSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetAnomalySecurityMLAnalyticsSettingsResult(
      anomalySettingsVersion: (() { final guardedValue = map['anomalySettingsVersion']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      anomalyVersion: (() { final guardedValue = map['anomalyVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customizableObservations: (() { final guardedValue = map['customizableObservations']; if (guardedValue == null) return null; return guardedValue; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefaultSettings: (() { final guardedValue = map['isDefaultSettings']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedUtc: (() { final guardedValue = map['lastModifiedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredDataConnectors: (() { final guardedValue = map['requiredDataConnectors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityMLAnalyticsSettingsDataSourceResponse>(guardedValue, (value) => SecurityMLAnalyticsSettingsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      settingsDefinitionId: (() { final guardedValue = map['settingsDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settingsStatus: (() { final guardedValue = map['settingsStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
