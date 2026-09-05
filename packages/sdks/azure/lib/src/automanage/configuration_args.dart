// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_antimalware.dart';
import 'configuration_azure_security_baseline.dart';
import 'configuration_backup.dart';

/// {@template pulumi_automanage_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_automanage_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// A `antimalware` block as defined below.
  final pulumi.Input<ConfigurationAntimalware?>? antimalware;
  /// Whether the automation account is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? automationAccountEnabled;
  /// A `azureSecurityBaseline` block as defined below.
  final pulumi.Input<ConfigurationAzureSecurityBaseline?>? azureSecurityBaseline;
  /// A `backup` block as defined below.
  final pulumi.Input<ConfigurationBackup?>? backup;
  /// Whether the boot diagnostics are enabled. Defaults to `false`.
  final pulumi.Input<bool?>? bootDiagnosticsEnabled;
  /// Whether the defender for cloud is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? defenderForCloudEnabled;
  /// Whether the guest configuration is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? guestConfigurationEnabled;
  /// The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  final pulumi.Input<String?>? location;
  /// Whether log analytics are enabled. Defaults to `false`.
  final pulumi.Input<bool?>? logAnalyticsEnabled;
  /// The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Whether the status change alert is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? statusChangeAlertEnabled;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConfigurationArgs].
  /// [antimalware] A `antimalware` block as defined below.
  /// [automationAccountEnabled] Whether the automation account is enabled. Defaults to `false`.
  /// [azureSecurityBaseline] A `azureSecurityBaseline` block as defined below.
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
  const ConfigurationArgs({
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
    required this.resourceGroupName,
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
      'resourceGroupName': resourceGroupName,
      'statusChangeAlertEnabled': ?statusChangeAlertEnabled,
      'tags': ?tags,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      antimalware: (() { final guardedValue = map['antimalware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationAntimalware.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automationAccountEnabled: (() { final guardedValue = map['automationAccountEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureSecurityBaseline: (() { final guardedValue = map['azureSecurityBaseline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationAzureSecurityBaseline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationBackup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDiagnosticsEnabled: (() { final guardedValue = map['bootDiagnosticsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defenderForCloudEnabled: (() { final guardedValue = map['defenderForCloudEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestConfigurationEnabled: (() { final guardedValue = map['guestConfigurationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsEnabled: (() { final guardedValue = map['logAnalyticsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      statusChangeAlertEnabled: (() { final guardedValue = map['statusChangeAlertEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
