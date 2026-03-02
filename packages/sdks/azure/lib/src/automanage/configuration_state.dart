// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_antimalware.dart';
import 'configuration_azure_security_baseline.dart';
import 'configuration_backup.dart';

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// A `antimalware` block as defined below.
  final pulumi.Input<ConfigurationAntimalware>? antimalware;
  /// Whether the automation account is enabled. Defaults to `false`.
  final pulumi.Input<bool>? automationAccountEnabled;
  /// A `azure_security_baseline` block as defined below.
  final pulumi.Input<ConfigurationAzureSecurityBaseline>? azureSecurityBaseline;
  /// A `backup` block as defined below.
  final pulumi.Input<ConfigurationBackup>? backup;
  /// Whether the boot diagnostics are enabled. Defaults to `false`.
  final pulumi.Input<bool>? bootDiagnosticsEnabled;
  /// Whether the defender for cloud is enabled. Defaults to `false`.
  final pulumi.Input<bool>? defenderForCloudEnabled;
  /// Whether the guest configuration is enabled. Defaults to `false`.
  final pulumi.Input<bool>? guestConfigurationEnabled;
  /// The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  final pulumi.Input<String>? location;
  /// Whether log analytics are enabled. Defaults to `false`.
  final pulumi.Input<bool>? logAnalyticsEnabled;
  /// The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Whether the status change alert is enabled. Defaults to `false`.
  final pulumi.Input<bool>? statusChangeAlertEnabled;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationState].
  /// [antimalware] A `antimalware` block as defined below.
  /// [automationAccountEnabled] Whether the automation account is enabled. Defaults to `false`.
  /// [azureSecurityBaseline] A `azure_security_baseline` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [bootDiagnosticsEnabled] Whether the boot diagnostics are enabled. Defaults to `false`.
  /// [defenderForCloudEnabled] Whether the defender for cloud is enabled. Defaults to `false`.
  /// [guestConfigurationEnabled] Whether the guest configuration is enabled. Defaults to `false`.
  /// [location] The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  /// [logAnalyticsEnabled] Whether log analytics are enabled. Defaults to `false`.
  /// [name] The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created.
  /// [resourceGroupName] The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  /// [statusChangeAlertEnabled] Whether the status change alert is enabled. Defaults to `false`.
  /// [tags] Optional.
  ConfigurationState({
    this.antimalware,
    this.automationAccountEnabled,
    this.azureSecurityBaseline,
    this.backup,
    this.bootDiagnosticsEnabled,
    this.defenderForCloudEnabled,
    this.guestConfigurationEnabled,
    this.location,
    this.logAnalyticsEnabled,
    this.name,
    this.resourceGroupName,
    this.statusChangeAlertEnabled,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antimalware': ?pulumi.Input.mapOptionalInputValue<ConfigurationAntimalware, Map<String, dynamic>>(antimalware, (value) => value.toMap()),
      'automationAccountEnabled': ?automationAccountEnabled,
      'azureSecurityBaseline': ?pulumi.Input.mapOptionalInputValue<ConfigurationAzureSecurityBaseline, Map<String, dynamic>>(azureSecurityBaseline, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<ConfigurationBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'bootDiagnosticsEnabled': ?bootDiagnosticsEnabled,
      'defenderForCloudEnabled': ?defenderForCloudEnabled,
      'guestConfigurationEnabled': ?guestConfigurationEnabled,
      'location': ?location,
      'logAnalyticsEnabled': ?logAnalyticsEnabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'statusChangeAlertEnabled': ?statusChangeAlertEnabled,
      'tags': ?tags,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      antimalware: map['antimalware'] == null ? null : (ConfigurationAntimalware.fromMap((map['antimalware'] as Map).cast<String, dynamic>())).input(),
      automationAccountEnabled: map['automationAccountEnabled'] == null ? null : (map['automationAccountEnabled'] as bool).input(),
      azureSecurityBaseline: map['azureSecurityBaseline'] == null ? null : (ConfigurationAzureSecurityBaseline.fromMap((map['azureSecurityBaseline'] as Map).cast<String, dynamic>())).input(),
      backup: map['backup'] == null ? null : (ConfigurationBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())).input(),
      bootDiagnosticsEnabled: map['bootDiagnosticsEnabled'] == null ? null : (map['bootDiagnosticsEnabled'] as bool).input(),
      defenderForCloudEnabled: map['defenderForCloudEnabled'] == null ? null : (map['defenderForCloudEnabled'] as bool).input(),
      guestConfigurationEnabled: map['guestConfigurationEnabled'] == null ? null : (map['guestConfigurationEnabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logAnalyticsEnabled: map['logAnalyticsEnabled'] == null ? null : (map['logAnalyticsEnabled'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      statusChangeAlertEnabled: map['statusChangeAlertEnabled'] == null ? null : (map['statusChangeAlertEnabled'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

