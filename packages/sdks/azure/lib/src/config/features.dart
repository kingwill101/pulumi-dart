// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'features_api_management.dart';
import 'features_app_configuration.dart';
import 'features_application_insights.dart';
import 'features_cognitive_account.dart';
import 'features_databricks_workspace.dart';
import 'features_key_vault.dart';
import 'features_log_analytics_workspace.dart';
import 'features_machine_learning.dart';
import 'features_managed_disk.dart';
import 'features_netapp.dart';
import 'features_postgresql_flexible_server.dart';
import 'features_recovery_service.dart';
import 'features_recovery_services_vaults.dart';
import 'features_resource_group.dart';
import 'features_storage.dart';
import 'features_subscription.dart';
import 'features_template_deployment.dart';
import 'features_virtual_machine.dart';
import 'features_virtual_machine_scale_set.dart';

class Features {
  final pulumi.Input<FeaturesApiManagement>? apiManagement;
  final pulumi.Input<FeaturesAppConfiguration>? appConfiguration;
  final pulumi.Input<FeaturesApplicationInsights>? applicationInsights;
  final pulumi.Input<FeaturesCognitiveAccount>? cognitiveAccount;
  final pulumi.Input<FeaturesDatabricksWorkspace>? databricksWorkspace;
  final pulumi.Input<FeaturesKeyVault>? keyVault;
  final pulumi.Input<FeaturesLogAnalyticsWorkspace>? logAnalyticsWorkspace;
  final pulumi.Input<FeaturesMachineLearning>? machineLearning;
  final pulumi.Input<FeaturesManagedDisk>? managedDisk;
  final pulumi.Input<FeaturesNetapp>? netapp;
  /// Whether to set the resource ID into state before polling asynchronous operations for completion. Defaults to `false`.
  final pulumi.Input<bool>? persistIdOnCreateBeforePollingForCompletion;
  final pulumi.Input<FeaturesPostgresqlFlexibleServer>? postgresqlFlexibleServer;
  final pulumi.Input<FeaturesRecoveryService>? recoveryService;
  final pulumi.Input<FeaturesRecoveryServicesVaults>? recoveryServicesVaults;
  final pulumi.Input<FeaturesResourceGroup>? resourceGroup;
  /// Whether to skip the import check and allow the provider to overwrite existing remote resources if present. Defaults to `false`.
  final pulumi.Input<bool>? skipImportCheckOnCreateAndAllowOverwritingExistingResources;
  final pulumi.Input<FeaturesStorage>? storage;
  final pulumi.Input<FeaturesSubscription>? subscription;
  final pulumi.Input<FeaturesTemplateDeployment>? templateDeployment;
  final pulumi.Input<FeaturesVirtualMachine>? virtualMachine;
  final pulumi.Input<FeaturesVirtualMachineScaleSet>? virtualMachineScaleSet;

  /// Creates a new [Features].
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
  /// [persistIdOnCreateBeforePollingForCompletion] Whether to set the resource ID into state before polling asynchronous operations for completion. Defaults to `false`.
  /// [postgresqlFlexibleServer] Optional.
  /// [recoveryService] Optional.
  /// [recoveryServicesVaults] Optional.
  /// [resourceGroup] Optional.
  /// [skipImportCheckOnCreateAndAllowOverwritingExistingResources] Whether to skip the import check and allow the provider to overwrite existing remote resources if present. Defaults to `false`.
  /// [storage] Optional.
  /// [subscription] Optional.
  /// [templateDeployment] Optional.
  /// [virtualMachine] Optional.
  /// [virtualMachineScaleSet] Optional.
  const Features({
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
    this.persistIdOnCreateBeforePollingForCompletion,
    this.postgresqlFlexibleServer,
    this.recoveryService,
    this.recoveryServicesVaults,
    this.resourceGroup,
    this.skipImportCheckOnCreateAndAllowOverwritingExistingResources,
    this.storage,
    this.subscription,
    this.templateDeployment,
    this.virtualMachine,
    this.virtualMachineScaleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagement': ?pulumi.Input.mapOptionalInputValue<FeaturesApiManagement, Map<String, dynamic>>(apiManagement, (value) => value.toMap()),
      'appConfiguration': ?pulumi.Input.mapOptionalInputValue<FeaturesAppConfiguration, Map<String, dynamic>>(appConfiguration, (value) => value.toMap()),
      'applicationInsights': ?pulumi.Input.mapOptionalInputValue<FeaturesApplicationInsights, Map<String, dynamic>>(applicationInsights, (value) => value.toMap()),
      'cognitiveAccount': ?pulumi.Input.mapOptionalInputValue<FeaturesCognitiveAccount, Map<String, dynamic>>(cognitiveAccount, (value) => value.toMap()),
      'databricksWorkspace': ?pulumi.Input.mapOptionalInputValue<FeaturesDatabricksWorkspace, Map<String, dynamic>>(databricksWorkspace, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<FeaturesKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'logAnalyticsWorkspace': ?pulumi.Input.mapOptionalInputValue<FeaturesLogAnalyticsWorkspace, Map<String, dynamic>>(logAnalyticsWorkspace, (value) => value.toMap()),
      'machineLearning': ?pulumi.Input.mapOptionalInputValue<FeaturesMachineLearning, Map<String, dynamic>>(machineLearning, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<FeaturesManagedDisk, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'netapp': ?pulumi.Input.mapOptionalInputValue<FeaturesNetapp, Map<String, dynamic>>(netapp, (value) => value.toMap()),
      'persistIdOnCreateBeforePollingForCompletion': ?persistIdOnCreateBeforePollingForCompletion,
      'postgresqlFlexibleServer': ?pulumi.Input.mapOptionalInputValue<FeaturesPostgresqlFlexibleServer, Map<String, dynamic>>(postgresqlFlexibleServer, (value) => value.toMap()),
      'recoveryService': ?pulumi.Input.mapOptionalInputValue<FeaturesRecoveryService, Map<String, dynamic>>(recoveryService, (value) => value.toMap()),
      'recoveryServicesVaults': ?pulumi.Input.mapOptionalInputValue<FeaturesRecoveryServicesVaults, Map<String, dynamic>>(recoveryServicesVaults, (value) => value.toMap()),
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<FeaturesResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'skipImportCheckOnCreateAndAllowOverwritingExistingResources': ?skipImportCheckOnCreateAndAllowOverwritingExistingResources,
      'storage': ?pulumi.Input.mapOptionalInputValue<FeaturesStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'subscription': ?pulumi.Input.mapOptionalInputValue<FeaturesSubscription, Map<String, dynamic>>(subscription, (value) => value.toMap()),
      'templateDeployment': ?pulumi.Input.mapOptionalInputValue<FeaturesTemplateDeployment, Map<String, dynamic>>(templateDeployment, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<FeaturesVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'virtualMachineScaleSet': ?pulumi.Input.mapOptionalInputValue<FeaturesVirtualMachineScaleSet, Map<String, dynamic>>(virtualMachineScaleSet, (value) => value.toMap()),
    };
  }

  factory Features.fromMap(Map<String, dynamic> map) {
    return Features(
      apiManagement: (() { final guardedValue = map['apiManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesApiManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appConfiguration: (() { final guardedValue = map['appConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesAppConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationInsights: (() { final guardedValue = map['applicationInsights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesApplicationInsights.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cognitiveAccount: (() { final guardedValue = map['cognitiveAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesCognitiveAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databricksWorkspace: (() { final guardedValue = map['databricksWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesDatabricksWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsWorkspace: (() { final guardedValue = map['logAnalyticsWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesLogAnalyticsWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineLearning: (() { final guardedValue = map['machineLearning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesMachineLearning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesManagedDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netapp: (() { final guardedValue = map['netapp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesNetapp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistIdOnCreateBeforePollingForCompletion: (() { final guardedValue = map['persistIdOnCreateBeforePollingForCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      postgresqlFlexibleServer: (() { final guardedValue = map['postgresqlFlexibleServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesPostgresqlFlexibleServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryService: (() { final guardedValue = map['recoveryService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesRecoveryService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryServicesVaults: (() { final guardedValue = map['recoveryServicesVaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesRecoveryServicesVaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesResourceGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipImportCheckOnCreateAndAllowOverwritingExistingResources: (() { final guardedValue = map['skipImportCheckOnCreateAndAllowOverwritingExistingResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesSubscription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateDeployment: (() { final guardedValue = map['templateDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesTemplateDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachineScaleSet: (() { final guardedValue = map['virtualMachineScaleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeaturesVirtualMachineScaleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
