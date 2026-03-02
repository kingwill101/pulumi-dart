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
  final pulumi.Input<FeaturesPostgresqlFlexibleServer>? postgresqlFlexibleServer;
  final pulumi.Input<FeaturesRecoveryService>? recoveryService;
  final pulumi.Input<FeaturesRecoveryServicesVaults>? recoveryServicesVaults;
  final pulumi.Input<FeaturesResourceGroup>? resourceGroup;
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
  /// [postgresqlFlexibleServer] Optional.
  /// [recoveryService] Optional.
  /// [recoveryServicesVaults] Optional.
  /// [resourceGroup] Optional.
  /// [storage] Optional.
  /// [subscription] Optional.
  /// [templateDeployment] Optional.
  /// [virtualMachine] Optional.
  /// [virtualMachineScaleSet] Optional.
  Features({
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
      'postgresqlFlexibleServer': ?pulumi.Input.mapOptionalInputValue<FeaturesPostgresqlFlexibleServer, Map<String, dynamic>>(postgresqlFlexibleServer, (value) => value.toMap()),
      'recoveryService': ?pulumi.Input.mapOptionalInputValue<FeaturesRecoveryService, Map<String, dynamic>>(recoveryService, (value) => value.toMap()),
      'recoveryServicesVaults': ?pulumi.Input.mapOptionalInputValue<FeaturesRecoveryServicesVaults, Map<String, dynamic>>(recoveryServicesVaults, (value) => value.toMap()),
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<FeaturesResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<FeaturesStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'subscription': ?pulumi.Input.mapOptionalInputValue<FeaturesSubscription, Map<String, dynamic>>(subscription, (value) => value.toMap()),
      'templateDeployment': ?pulumi.Input.mapOptionalInputValue<FeaturesTemplateDeployment, Map<String, dynamic>>(templateDeployment, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<FeaturesVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'virtualMachineScaleSet': ?pulumi.Input.mapOptionalInputValue<FeaturesVirtualMachineScaleSet, Map<String, dynamic>>(virtualMachineScaleSet, (value) => value.toMap()),
    };
  }

  factory Features.fromMap(Map<String, dynamic> map) {
    return Features(
      apiManagement: map['apiManagement'] == null ? null : (FeaturesApiManagement.fromMap((map['apiManagement']! as Map).cast<String, dynamic>())).input(),
      appConfiguration: map['appConfiguration'] == null ? null : (FeaturesAppConfiguration.fromMap((map['appConfiguration']! as Map).cast<String, dynamic>())).input(),
      applicationInsights: map['applicationInsights'] == null ? null : (FeaturesApplicationInsights.fromMap((map['applicationInsights']! as Map).cast<String, dynamic>())).input(),
      cognitiveAccount: map['cognitiveAccount'] == null ? null : (FeaturesCognitiveAccount.fromMap((map['cognitiveAccount']! as Map).cast<String, dynamic>())).input(),
      databricksWorkspace: map['databricksWorkspace'] == null ? null : (FeaturesDatabricksWorkspace.fromMap((map['databricksWorkspace']! as Map).cast<String, dynamic>())).input(),
      keyVault: map['keyVault'] == null ? null : (FeaturesKeyVault.fromMap((map['keyVault']! as Map).cast<String, dynamic>())).input(),
      logAnalyticsWorkspace: map['logAnalyticsWorkspace'] == null ? null : (FeaturesLogAnalyticsWorkspace.fromMap((map['logAnalyticsWorkspace']! as Map).cast<String, dynamic>())).input(),
      machineLearning: map['machineLearning'] == null ? null : (FeaturesMachineLearning.fromMap((map['machineLearning']! as Map).cast<String, dynamic>())).input(),
      managedDisk: map['managedDisk'] == null ? null : (FeaturesManagedDisk.fromMap((map['managedDisk']! as Map).cast<String, dynamic>())).input(),
      netapp: map['netapp'] == null ? null : (FeaturesNetapp.fromMap((map['netapp']! as Map).cast<String, dynamic>())).input(),
      postgresqlFlexibleServer: map['postgresqlFlexibleServer'] == null ? null : (FeaturesPostgresqlFlexibleServer.fromMap((map['postgresqlFlexibleServer']! as Map).cast<String, dynamic>())).input(),
      recoveryService: map['recoveryService'] == null ? null : (FeaturesRecoveryService.fromMap((map['recoveryService']! as Map).cast<String, dynamic>())).input(),
      recoveryServicesVaults: map['recoveryServicesVaults'] == null ? null : (FeaturesRecoveryServicesVaults.fromMap((map['recoveryServicesVaults']! as Map).cast<String, dynamic>())).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (FeaturesResourceGroup.fromMap((map['resourceGroup']! as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (FeaturesStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
      subscription: map['subscription'] == null ? null : (FeaturesSubscription.fromMap((map['subscription']! as Map).cast<String, dynamic>())).input(),
      templateDeployment: map['templateDeployment'] == null ? null : (FeaturesTemplateDeployment.fromMap((map['templateDeployment']! as Map).cast<String, dynamic>())).input(),
      virtualMachine: map['virtualMachine'] == null ? null : (FeaturesVirtualMachine.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())).input(),
      virtualMachineScaleSet: map['virtualMachineScaleSet'] == null ? null : (FeaturesVirtualMachineScaleSet.fromMap((map['virtualMachineScaleSet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

