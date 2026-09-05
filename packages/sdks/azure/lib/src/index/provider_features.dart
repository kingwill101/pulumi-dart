// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_features_api_management.dart';
import 'provider_features_app_configuration.dart';
import 'provider_features_application_insights.dart';
import 'provider_features_cognitive_account.dart';
import 'provider_features_databricks_workspace.dart';
import 'provider_features_enhanced_validation.dart';
import 'provider_features_key_vault.dart';
import 'provider_features_log_analytics_workspace.dart';
import 'provider_features_machine_learning.dart';
import 'provider_features_managed_disk.dart';
import 'provider_features_netapp.dart';
import 'provider_features_postgresql_flexible_server.dart';
import 'provider_features_recovery_service.dart';
import 'provider_features_recovery_services_vaults.dart';
import 'provider_features_resource_group.dart';
import 'provider_features_servicebus.dart';
import 'provider_features_storage.dart';
import 'provider_features_subscription.dart';
import 'provider_features_template_deployment.dart';
import 'provider_features_virtual_machine.dart';
import 'provider_features_virtual_machine_scale_set.dart';

class ProviderFeatures {
  final pulumi.Input<ProviderFeaturesApiManagement?>? apiManagement;
  final pulumi.Input<ProviderFeaturesAppConfiguration?>? appConfiguration;
  final pulumi.Input<ProviderFeaturesApplicationInsights?>? applicationInsights;
  final pulumi.Input<ProviderFeaturesCognitiveAccount?>? cognitiveAccount;
  final pulumi.Input<ProviderFeaturesDatabricksWorkspace?>? databricksWorkspace;
  final pulumi.Input<ProviderFeaturesEnhancedValidation?>? enhancedValidation;
  final pulumi.Input<ProviderFeaturesKeyVault?>? keyVault;
  final pulumi.Input<ProviderFeaturesLogAnalyticsWorkspace?>? logAnalyticsWorkspace;
  final pulumi.Input<ProviderFeaturesMachineLearning?>? machineLearning;
  final pulumi.Input<ProviderFeaturesManagedDisk?>? managedDisk;
  final pulumi.Input<ProviderFeaturesNetapp?>? netapp;
  /// Whether to set the resource ID into state before polling asynchronous operations for completion. Defaults to `false`.
  final pulumi.Input<bool?>? persistIdOnCreateBeforePollingForCompletion;
  final pulumi.Input<ProviderFeaturesPostgresqlFlexibleServer?>? postgresqlFlexibleServer;
  final pulumi.Input<ProviderFeaturesRecoveryService?>? recoveryService;
  final pulumi.Input<ProviderFeaturesRecoveryServicesVaults?>? recoveryServicesVaults;
  final pulumi.Input<ProviderFeaturesResourceGroup?>? resourceGroup;
  final pulumi.Input<ProviderFeaturesServicebus?>? servicebus;
  /// Whether to skip the import check and allow the provider to overwrite existing remote resources if present. Defaults to `false`.
  final pulumi.Input<bool?>? skipImportCheckOnCreateAndAllowOverwritingExistingResources;
  final pulumi.Input<ProviderFeaturesStorage?>? storage;
  final pulumi.Input<ProviderFeaturesSubscription?>? subscription;
  final pulumi.Input<ProviderFeaturesTemplateDeployment?>? templateDeployment;
  final pulumi.Input<ProviderFeaturesVirtualMachine?>? virtualMachine;
  final pulumi.Input<ProviderFeaturesVirtualMachineScaleSet?>? virtualMachineScaleSet;

  /// Creates a new [ProviderFeatures].
  /// [apiManagement] Optional.
  /// [appConfiguration] Optional.
  /// [applicationInsights] Optional.
  /// [cognitiveAccount] Optional.
  /// [databricksWorkspace] Optional.
  /// [enhancedValidation] Optional.
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
  /// [servicebus] Optional.
  /// [skipImportCheckOnCreateAndAllowOverwritingExistingResources] Whether to skip the import check and allow the provider to overwrite existing remote resources if present. Defaults to `false`.
  /// [storage] Optional.
  /// [subscription] Optional.
  /// [templateDeployment] Optional.
  /// [virtualMachine] Optional.
  /// [virtualMachineScaleSet] Optional.
  const ProviderFeatures({
    this.apiManagement,
    this.appConfiguration,
    this.applicationInsights,
    this.cognitiveAccount,
    this.databricksWorkspace,
    this.enhancedValidation,
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
    this.servicebus,
    this.skipImportCheckOnCreateAndAllowOverwritingExistingResources,
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
      'enhancedValidation': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesEnhancedValidation, Map<String, dynamic>>(enhancedValidation, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'logAnalyticsWorkspace': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesLogAnalyticsWorkspace, Map<String, dynamic>>(logAnalyticsWorkspace, (value) => value.toMap()),
      'machineLearning': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesMachineLearning, Map<String, dynamic>>(machineLearning, (value) => value.toMap()),
      'managedDisk': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesManagedDisk, Map<String, dynamic>>(managedDisk, (value) => value.toMap()),
      'netapp': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesNetapp, Map<String, dynamic>>(netapp, (value) => value.toMap()),
      'persistIdOnCreateBeforePollingForCompletion': ?persistIdOnCreateBeforePollingForCompletion,
      'postgresqlFlexibleServer': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesPostgresqlFlexibleServer, Map<String, dynamic>>(postgresqlFlexibleServer, (value) => value.toMap()),
      'recoveryService': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesRecoveryService, Map<String, dynamic>>(recoveryService, (value) => value.toMap()),
      'recoveryServicesVaults': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesRecoveryServicesVaults, Map<String, dynamic>>(recoveryServicesVaults, (value) => value.toMap()),
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'servicebus': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesServicebus, Map<String, dynamic>>(servicebus, (value) => value.toMap()),
      'skipImportCheckOnCreateAndAllowOverwritingExistingResources': ?skipImportCheckOnCreateAndAllowOverwritingExistingResources,
      'storage': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'subscription': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesSubscription, Map<String, dynamic>>(subscription, (value) => value.toMap()),
      'templateDeployment': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesTemplateDeployment, Map<String, dynamic>>(templateDeployment, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'virtualMachineScaleSet': ?pulumi.Input.mapOptionalInputValue<ProviderFeaturesVirtualMachineScaleSet, Map<String, dynamic>>(virtualMachineScaleSet, (value) => value.toMap()),
    };
  }

  factory ProviderFeatures.fromMap(Map<String, dynamic> map) {
    return ProviderFeatures(
      apiManagement: (() { final guardedValue = map['apiManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesApiManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appConfiguration: (() { final guardedValue = map['appConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesAppConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      applicationInsights: (() { final guardedValue = map['applicationInsights']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesApplicationInsights.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cognitiveAccount: (() { final guardedValue = map['cognitiveAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesCognitiveAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databricksWorkspace: (() { final guardedValue = map['databricksWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesDatabricksWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enhancedValidation: (() { final guardedValue = map['enhancedValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesEnhancedValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesKeyVault.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logAnalyticsWorkspace: (() { final guardedValue = map['logAnalyticsWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesLogAnalyticsWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineLearning: (() { final guardedValue = map['machineLearning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesMachineLearning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedDisk: (() { final guardedValue = map['managedDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesManagedDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netapp: (() { final guardedValue = map['netapp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesNetapp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistIdOnCreateBeforePollingForCompletion: (() { final guardedValue = map['persistIdOnCreateBeforePollingForCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      postgresqlFlexibleServer: (() { final guardedValue = map['postgresqlFlexibleServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesPostgresqlFlexibleServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryService: (() { final guardedValue = map['recoveryService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesRecoveryService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryServicesVaults: (() { final guardedValue = map['recoveryServicesVaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesRecoveryServicesVaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesResourceGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicebus: (() { final guardedValue = map['servicebus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesServicebus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipImportCheckOnCreateAndAllowOverwritingExistingResources: (() { final guardedValue = map['skipImportCheckOnCreateAndAllowOverwritingExistingResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesSubscription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateDeployment: (() { final guardedValue = map['templateDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesTemplateDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualMachineScaleSet: (() { final guardedValue = map['virtualMachineScaleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderFeaturesVirtualMachineScaleSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
