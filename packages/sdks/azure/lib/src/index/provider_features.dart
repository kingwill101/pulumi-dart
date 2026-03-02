// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_features_api_management.dart';
import 'provider_features_app_configuration.dart';
import 'provider_features_application_insights.dart';
import 'provider_features_cognitive_account.dart';
import 'provider_features_databricks_workspace.dart';
import 'provider_features_key_vault.dart';
import 'provider_features_log_analytics_workspace.dart';
import 'provider_features_machine_learning.dart';
import 'provider_features_managed_disk.dart';
import 'provider_features_netapp.dart';
import 'provider_features_postgresql_flexible_server.dart';
import 'provider_features_recovery_service.dart';
import 'provider_features_recovery_services_vaults.dart';
import 'provider_features_resource_group.dart';
import 'provider_features_storage.dart';
import 'provider_features_subscription.dart';
import 'provider_features_template_deployment.dart';
import 'provider_features_virtual_machine.dart';
import 'provider_features_virtual_machine_scale_set.dart';

class ProviderFeatures {
  final pulumi.Input<ProviderFeaturesApiManagement>? apiManagement;
  final pulumi.Input<ProviderFeaturesAppConfiguration>? appConfiguration;
  final pulumi.Input<ProviderFeaturesApplicationInsights>? applicationInsights;
  final pulumi.Input<ProviderFeaturesCognitiveAccount>? cognitiveAccount;
  final pulumi.Input<ProviderFeaturesDatabricksWorkspace>? databricksWorkspace;
  final pulumi.Input<ProviderFeaturesKeyVault>? keyVault;
  final pulumi.Input<ProviderFeaturesLogAnalyticsWorkspace>? logAnalyticsWorkspace;
  final pulumi.Input<ProviderFeaturesMachineLearning>? machineLearning;
  final pulumi.Input<ProviderFeaturesManagedDisk>? managedDisk;
  final pulumi.Input<ProviderFeaturesNetapp>? netapp;
  final pulumi.Input<ProviderFeaturesPostgresqlFlexibleServer>? postgresqlFlexibleServer;
  final pulumi.Input<ProviderFeaturesRecoveryService>? recoveryService;
  final pulumi.Input<ProviderFeaturesRecoveryServicesVaults>? recoveryServicesVaults;
  final pulumi.Input<ProviderFeaturesResourceGroup>? resourceGroup;
  final pulumi.Input<ProviderFeaturesStorage>? storage;
  final pulumi.Input<ProviderFeaturesSubscription>? subscription;
  final pulumi.Input<ProviderFeaturesTemplateDeployment>? templateDeployment;
  final pulumi.Input<ProviderFeaturesVirtualMachine>? virtualMachine;
  final pulumi.Input<ProviderFeaturesVirtualMachineScaleSet>? virtualMachineScaleSet;

  /// Creates a new [ProviderFeatures].
  /// [apiManagement] Optional.
  /// [appConfiguration] Optional.
  /// [applicationInsights] Optional.
  /// [cognitiveAccount] Optional.
  /// [databricksWorkspace] Optional.
  /// [keyVault] Optional.
  /// [logAnalyticsWorkspace] Optional.
  /// [machineLearning] Optional.
  /// [managedDisk] Optional.
  /// [netapp] Optional.
  /// [postgresqlFlexibleServer] Optional.
  /// [recoveryService] Optional.
  /// [recoveryServicesVaults] Optional.
  /// [resourceGroup] Optional.
  /// [storage] Optional.
  /// [subscription] Optional.
  /// [templateDeployment] Optional.
  /// [virtualMachine] Optional.
  /// [virtualMachineScaleSet] Optional.
  ProviderFeatures({
    this.apiManagement,
    this.appConfiguration,
    this.applicationInsights,
    this.cognitiveAccount,
    this.databricksWorkspace,
    this.keyVault,
    this.logAnalyticsWorkspace,
    this.machineLearning,
    this.managedDisk,
    this.netapp,
    this.postgresqlFlexibleServer,
    this.recoveryService,
    this.recoveryServicesVaults,
    this.resourceGroup,
    this.storage,
    this.subscription,
    this.templateDeployment,
    this.virtualMachine,
    this.virtualMachineScaleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagement': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesApiManagement, Map<String, dynamic>>(apiManagement, (value) => value.toMap()),
      'appConfiguration': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesAppConfiguration, Map<String, dynamic>>(appConfiguration, (value) => value.toMap()),
      'applicationInsights': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesApplicationInsights, Map<String, dynamic>>(applicationInsights, (value) => value.toMap()),
      'cognitiveAccount': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesCognitiveAccount, Map<String, dynamic>>(cognitiveAccount, (value) => value.toMap()),
      'databricksWorkspace': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesDatabricksWorkspace, Map<String, dynamic>>(databricksWorkspace, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'logAnalyticsWorkspace': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesLogAnalyticsWorkspace, Map<String, dynamic>>(logAnalyticsWorkspace, (value) => value.toMap()),
      'machineLearning': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesMachineLearning, Map<String, dynamic>>(machineLearning, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesManagedDisk, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'netapp': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesNetapp, Map<String, dynamic>>(netapp, (value) => value.toMap()),
      'postgresqlFlexibleServer': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesPostgresqlFlexibleServer, Map<String, dynamic>>(postgresqlFlexibleServer, (value) => value.toMap()),
      'recoveryService': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesRecoveryService, Map<String, dynamic>>(recoveryService, (value) => value.toMap()),
      'recoveryServicesVaults': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesRecoveryServicesVaults, Map<String, dynamic>>(recoveryServicesVaults, (value) => value.toMap()),
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'subscription': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesSubscription, Map<String, dynamic>>(subscription, (value) => value.toMap()),
      'templateDeployment': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesTemplateDeployment, Map<String, dynamic>>(templateDeployment, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'virtualMachineScaleSet': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesVirtualMachineScaleSet, Map<String, dynamic>>(virtualMachineScaleSet, (value) => value.toMap()),
    };
  }

  factory ProviderFeatures.fromMap(Map<String, dynamic> map) {
    return ProviderFeatures(
      apiManagement: map['apiManagement'] == null ? null : (ProviderFeaturesApiManagement.fromMap((map['apiManagement']! as Map).cast<String, dynamic>())).input(),
      appConfiguration: map['appConfiguration'] == null ? null : (ProviderFeaturesAppConfiguration.fromMap((map['appConfiguration']! as Map).cast<String, dynamic>())).input(),
      applicationInsights: map['applicationInsights'] == null ? null : (ProviderFeaturesApplicationInsights.fromMap((map['applicationInsights']! as Map).cast<String, dynamic>())).input(),
      cognitiveAccount: map['cognitiveAccount'] == null ? null : (ProviderFeaturesCognitiveAccount.fromMap((map['cognitiveAccount']! as Map).cast<String, dynamic>())).input(),
      databricksWorkspace: map['databricksWorkspace'] == null ? null : (ProviderFeaturesDatabricksWorkspace.fromMap((map['databricksWorkspace']! as Map).cast<String, dynamic>())).input(),
      keyVault: map['keyVault'] == null ? null : (ProviderFeaturesKeyVault.fromMap((map['keyVault']! as Map).cast<String, dynamic>())).input(),
      logAnalyticsWorkspace: map['logAnalyticsWorkspace'] == null ? null : (ProviderFeaturesLogAnalyticsWorkspace.fromMap((map['logAnalyticsWorkspace']! as Map).cast<String, dynamic>())).input(),
      machineLearning: map['machineLearning'] == null ? null : (ProviderFeaturesMachineLearning.fromMap((map['machineLearning']! as Map).cast<String, dynamic>())).input(),
      managedDisk: map['managedDisk'] == null ? null : (ProviderFeaturesManagedDisk.fromMap((map['managedDisk']! as Map).cast<String, dynamic>())).input(),
      netapp: map['netapp'] == null ? null : (ProviderFeaturesNetapp.fromMap((map['netapp']! as Map).cast<String, dynamic>())).input(),
      postgresqlFlexibleServer: map['postgresqlFlexibleServer'] == null ? null : (ProviderFeaturesPostgresqlFlexibleServer.fromMap((map['postgresqlFlexibleServer']! as Map).cast<String, dynamic>())).input(),
      recoveryService: map['recoveryService'] == null ? null : (ProviderFeaturesRecoveryService.fromMap((map['recoveryService']! as Map).cast<String, dynamic>())).input(),
      recoveryServicesVaults: map['recoveryServicesVaults'] == null ? null : (ProviderFeaturesRecoveryServicesVaults.fromMap((map['recoveryServicesVaults']! as Map).cast<String, dynamic>())).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (ProviderFeaturesResourceGroup.fromMap((map['resourceGroup']! as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (ProviderFeaturesStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
      subscription: map['subscription'] == null ? null : (ProviderFeaturesSubscription.fromMap((map['subscription']! as Map).cast<String, dynamic>())).input(),
      templateDeployment: map['templateDeployment'] == null ? null : (ProviderFeaturesTemplateDeployment.fromMap((map['templateDeployment']! as Map).cast<String, dynamic>())).input(),
      virtualMachine: map['virtualMachine'] == null ? null : (ProviderFeaturesVirtualMachine.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())).input(),
      virtualMachineScaleSet: map['virtualMachineScaleSet'] == null ? null : (ProviderFeaturesVirtualMachineScaleSet.fromMap((map['virtualMachineScaleSet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

