// ignore_for_file: unused_element, unnecessary_cast

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
  final FeaturesApiManagement? apiManagement;
  final FeaturesAppConfiguration? appConfiguration;
  final FeaturesApplicationInsights? applicationInsights;
  final FeaturesCognitiveAccount? cognitiveAccount;
  final FeaturesDatabricksWorkspace? databricksWorkspace;
  final FeaturesKeyVault? keyVault;
  final FeaturesLogAnalyticsWorkspace? logAnalyticsWorkspace;
  final FeaturesMachineLearning? machineLearning;
  final FeaturesManagedDisk? managedDisk;
  final FeaturesNetapp? netapp;
  final FeaturesPostgresqlFlexibleServer? postgresqlFlexibleServer;
  final FeaturesRecoveryService? recoveryService;
  final FeaturesRecoveryServicesVaults? recoveryServicesVaults;
  final FeaturesResourceGroup? resourceGroup;
  final FeaturesStorage? storage;
  final FeaturesSubscription? subscription;
  final FeaturesTemplateDeployment? templateDeployment;
  final FeaturesVirtualMachine? virtualMachine;
  final FeaturesVirtualMachineScaleSet? virtualMachineScaleSet;

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
      'apiManagement': ?apiManagement == null ? null : apiManagement!.toMap(),
      'appConfiguration': ?appConfiguration == null ? null : appConfiguration!.toMap(),
      'applicationInsights': ?applicationInsights == null ? null : applicationInsights!.toMap(),
      'cognitiveAccount': ?cognitiveAccount == null ? null : cognitiveAccount!.toMap(),
      'databricksWorkspace': ?databricksWorkspace == null ? null : databricksWorkspace!.toMap(),
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'logAnalyticsWorkspace': ?logAnalyticsWorkspace == null ? null : logAnalyticsWorkspace!.toMap(),
      'machineLearning': ?machineLearning == null ? null : machineLearning!.toMap(),
      'managedDisk': ?managedDisk == null ? null : managedDisk!.toMap(),
      'netapp': ?netapp == null ? null : netapp!.toMap(),
      'postgresqlFlexibleServer': ?postgresqlFlexibleServer == null ? null : postgresqlFlexibleServer!.toMap(),
      'recoveryService': ?recoveryService == null ? null : recoveryService!.toMap(),
      'recoveryServicesVaults': ?recoveryServicesVaults == null ? null : recoveryServicesVaults!.toMap(),
      'resourceGroup': ?resourceGroup == null ? null : resourceGroup!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
      'subscription': ?subscription == null ? null : subscription!.toMap(),
      'templateDeployment': ?templateDeployment == null ? null : templateDeployment!.toMap(),
      'virtualMachine': ?virtualMachine == null ? null : virtualMachine!.toMap(),
      'virtualMachineScaleSet': ?virtualMachineScaleSet == null ? null : virtualMachineScaleSet!.toMap(),
    };
  }

  factory Features.fromMap(Map<String, dynamic> map) {
    return Features(
      apiManagement: map['apiManagement'] == null ? null : FeaturesApiManagement.fromMap((map['apiManagement'] as Map).cast<String, dynamic>()),
      appConfiguration: map['appConfiguration'] == null ? null : FeaturesAppConfiguration.fromMap((map['appConfiguration'] as Map).cast<String, dynamic>()),
      applicationInsights: map['applicationInsights'] == null ? null : FeaturesApplicationInsights.fromMap((map['applicationInsights'] as Map).cast<String, dynamic>()),
      cognitiveAccount: map['cognitiveAccount'] == null ? null : FeaturesCognitiveAccount.fromMap((map['cognitiveAccount'] as Map).cast<String, dynamic>()),
      databricksWorkspace: map['databricksWorkspace'] == null ? null : FeaturesDatabricksWorkspace.fromMap((map['databricksWorkspace'] as Map).cast<String, dynamic>()),
      keyVault: map['keyVault'] == null ? null : FeaturesKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      logAnalyticsWorkspace: map['logAnalyticsWorkspace'] == null ? null : FeaturesLogAnalyticsWorkspace.fromMap((map['logAnalyticsWorkspace'] as Map).cast<String, dynamic>()),
      machineLearning: map['machineLearning'] == null ? null : FeaturesMachineLearning.fromMap((map['machineLearning'] as Map).cast<String, dynamic>()),
      managedDisk: map['managedDisk'] == null ? null : FeaturesManagedDisk.fromMap((map['managedDisk'] as Map).cast<String, dynamic>()),
      netapp: map['netapp'] == null ? null : FeaturesNetapp.fromMap((map['netapp'] as Map).cast<String, dynamic>()),
      postgresqlFlexibleServer: map['postgresqlFlexibleServer'] == null ? null : FeaturesPostgresqlFlexibleServer.fromMap((map['postgresqlFlexibleServer'] as Map).cast<String, dynamic>()),
      recoveryService: map['recoveryService'] == null ? null : FeaturesRecoveryService.fromMap((map['recoveryService'] as Map).cast<String, dynamic>()),
      recoveryServicesVaults: map['recoveryServicesVaults'] == null ? null : FeaturesRecoveryServicesVaults.fromMap((map['recoveryServicesVaults'] as Map).cast<String, dynamic>()),
      resourceGroup: map['resourceGroup'] == null ? null : FeaturesResourceGroup.fromMap((map['resourceGroup'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : FeaturesStorage.fromMap((map['storage'] as Map).cast<String, dynamic>()),
      subscription: map['subscription'] == null ? null : FeaturesSubscription.fromMap((map['subscription'] as Map).cast<String, dynamic>()),
      templateDeployment: map['templateDeployment'] == null ? null : FeaturesTemplateDeployment.fromMap((map['templateDeployment'] as Map).cast<String, dynamic>()),
      virtualMachine: map['virtualMachine'] == null ? null : FeaturesVirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>()),
      virtualMachineScaleSet: map['virtualMachineScaleSet'] == null ? null : FeaturesVirtualMachineScaleSet.fromMap((map['virtualMachineScaleSet'] as Map).cast<String, dynamic>()),
    );
  }
}

