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
  final pulumi.Input<String> resourceGroupName;
  /// Whether the status change alert is enabled. Defaults to `false`.
  final pulumi.Input<bool>? statusChangeAlertEnabled;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationArgs].
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
  ConfigurationArgs({
    pulumi.Output<ConfigurationAntimalware>? antimalware,
    pulumi.Output<bool>? automationAccountEnabled,
    pulumi.Output<ConfigurationAzureSecurityBaseline>? azureSecurityBaseline,
    pulumi.Output<ConfigurationBackup>? backup,
    pulumi.Output<bool>? bootDiagnosticsEnabled,
    pulumi.Output<bool>? defenderForCloudEnabled,
    pulumi.Output<bool>? guestConfigurationEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logAnalyticsEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? statusChangeAlertEnabled,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      antimalware = pulumi.Input.asOptionalInput<ConfigurationAntimalware>(antimalware),
      automationAccountEnabled = pulumi.Input.asOptionalInput<bool>(automationAccountEnabled),
      azureSecurityBaseline = pulumi.Input.asOptionalInput<ConfigurationAzureSecurityBaseline>(azureSecurityBaseline),
      backup = pulumi.Input.asOptionalInput<ConfigurationBackup>(backup),
      bootDiagnosticsEnabled = pulumi.Input.asOptionalInput<bool>(bootDiagnosticsEnabled),
      defenderForCloudEnabled = pulumi.Input.asOptionalInput<bool>(defenderForCloudEnabled),
      guestConfigurationEnabled = pulumi.Input.asOptionalInput<bool>(guestConfigurationEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      logAnalyticsEnabled = pulumi.Input.asOptionalInput<bool>(logAnalyticsEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      statusChangeAlertEnabled = pulumi.Input.asOptionalInput<bool>(statusChangeAlertEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      antimalware: map['antimalware'] == null ? null : pulumi.Output.create<ConfigurationAntimalware>(ConfigurationAntimalware.fromMap((map['antimalware'] as Map).cast<String, dynamic>())),
      automationAccountEnabled: map['automationAccountEnabled'] == null ? null : pulumi.Output.create<bool>(map['automationAccountEnabled'] as bool),
      azureSecurityBaseline: map['azureSecurityBaseline'] == null ? null : pulumi.Output.create<ConfigurationAzureSecurityBaseline>(ConfigurationAzureSecurityBaseline.fromMap((map['azureSecurityBaseline'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<ConfigurationBackup>(ConfigurationBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      bootDiagnosticsEnabled: map['bootDiagnosticsEnabled'] == null ? null : pulumi.Output.create<bool>(map['bootDiagnosticsEnabled'] as bool),
      defenderForCloudEnabled: map['defenderForCloudEnabled'] == null ? null : pulumi.Output.create<bool>(map['defenderForCloudEnabled'] as bool),
      guestConfigurationEnabled: map['guestConfigurationEnabled'] == null ? null : pulumi.Output.create<bool>(map['guestConfigurationEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logAnalyticsEnabled: map['logAnalyticsEnabled'] == null ? null : pulumi.Output.create<bool>(map['logAnalyticsEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      statusChangeAlertEnabled: map['statusChangeAlertEnabled'] == null ? null : pulumi.Output.create<bool>(map['statusChangeAlertEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

