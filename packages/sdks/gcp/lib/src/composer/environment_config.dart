// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_data_retention_config.dart';
import 'environment_config_database_config.dart';
import 'environment_config_encryption_config.dart';
import 'environment_config_maintenance_window.dart';
import 'environment_config_master_authorized_networks_config.dart';
import 'environment_config_node_config.dart';
import 'environment_config_private_environment_config.dart';
import 'environment_config_recovery_config.dart';
import 'environment_config_software_config.dart';
import 'environment_config_web_server_config.dart';
import 'environment_config_web_server_network_access_control.dart';
import 'environment_config_workloads_config.dart';

class EnvironmentConfig {
  /// The URI of the Apache Airflow Web UI hosted within this
  /// environment.
  final pulumi.Input<String>? airflowUri;
  /// The Cloud Storage prefix of the DAGs for this environment.
  /// Although Cloud Storage objects reside in a flat namespace, a
  /// hierarchical file tree can be simulated using '/'-delimited
  /// object name prefixes. DAG objects for this environment
  /// reside in a simulated directory with this prefix.
  final pulumi.Input<String>? dagGcsPrefix;
  /// The configuration setting for Airflow data retention mechanism. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4. or newer
  final pulumi.Input<EnvironmentConfigDataRetentionConfig>? dataRetentionConfig;
  /// The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<EnvironmentConfigDatabaseConfig>? databaseConfig;
  /// Optional. If true, builds performed during operations that install Python packages have only private connectivity to Google services. If false, the builds also have access to the internet.
  final pulumi.Input<bool>? enablePrivateBuildsOnly;
  /// Optional. If true, a private Composer environment will be created.
  final pulumi.Input<bool>? enablePrivateEnvironment;
  /// The encryption options for the Composer environment and its dependencies.
  final pulumi.Input<EnvironmentConfigEncryptionConfig>? encryptionConfig;
  /// The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String>? environmentSize;
  /// The Kubernetes Engine cluster used to run this environment.
  final pulumi.Input<String>? gkeCluster;
  /// The configuration for Cloud Composer maintenance window.
  final pulumi.Input<EnvironmentConfigMaintenanceWindow>? maintenanceWindow;
  /// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
  final pulumi.Input<EnvironmentConfigMasterAuthorizedNetworksConfig>? masterAuthorizedNetworksConfig;
  /// The configuration used for the Kubernetes Engine cluster.
  final pulumi.Input<EnvironmentConfigNodeConfig>? nodeConfig;
  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int>? nodeCount;
  /// The configuration used for the Private IP Cloud Composer environment.
  final pulumi.Input<EnvironmentConfigPrivateEnvironmentConfig>? privateEnvironmentConfig;
  /// The recovery configuration settings for the Cloud Composer environment
  final pulumi.Input<EnvironmentConfigRecoveryConfig>? recoveryConfig;
  /// Whether high resilience is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.1.15-airflow-*.*.* and newer.
  final pulumi.Input<String>? resilienceMode;
  /// The configuration settings for software inside the environment.
  final pulumi.Input<EnvironmentConfigSoftwareConfig>? softwareConfig;
  /// The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<EnvironmentConfigWebServerConfig>? webServerConfig;
  /// Network-level access control policy for the Airflow web server.
  final pulumi.Input<EnvironmentConfigWebServerNetworkAccessControl>? webServerNetworkAccessControl;
  /// The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<EnvironmentConfigWorkloadsConfig>? workloadsConfig;

  /// Creates a new [EnvironmentConfig].
  /// [airflowUri] The URI of the Apache Airflow Web UI hosted within this
  /// [dagGcsPrefix] The Cloud Storage prefix of the DAGs for this environment.
  /// [dataRetentionConfig] The configuration setting for Airflow data retention mechanism. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4. or newer
  /// [databaseConfig] The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivateBuildsOnly] Optional. If true, builds performed during operations that install Python packages have only private connectivity to Google services. If false, the builds also have access to the internet.
  /// [enablePrivateEnvironment] Optional. If true, a private Composer environment will be created.
  /// [encryptionConfig] The encryption options for the Composer environment and its dependencies.
  /// [environmentSize] The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [gkeCluster] The Kubernetes Engine cluster used to run this environment.
  /// [maintenanceWindow] The configuration for Cloud Composer maintenance window.
  /// [masterAuthorizedNetworksConfig] Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
  /// [nodeConfig] The configuration used for the Kubernetes Engine cluster.
  /// [nodeCount] The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [privateEnvironmentConfig] The configuration used for the Private IP Cloud Composer environment.
  /// [recoveryConfig] The recovery configuration settings for the Cloud Composer environment
  /// [resilienceMode] Whether high resilience is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.1.15-airflow-*.*.* and newer.
  /// [softwareConfig] The configuration settings for software inside the environment.
  /// [webServerConfig] The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [webServerNetworkAccessControl] Network-level access control policy for the Airflow web server.
  /// [workloadsConfig] The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  EnvironmentConfig({
    this.airflowUri,
    this.dagGcsPrefix,
    this.dataRetentionConfig,
    this.databaseConfig,
    this.enablePrivateBuildsOnly,
    this.enablePrivateEnvironment,
    this.encryptionConfig,
    this.environmentSize,
    this.gkeCluster,
    this.maintenanceWindow,
    this.masterAuthorizedNetworksConfig,
    this.nodeConfig,
    this.nodeCount,
    this.privateEnvironmentConfig,
    this.recoveryConfig,
    this.resilienceMode,
    this.softwareConfig,
    this.webServerConfig,
    this.webServerNetworkAccessControl,
    this.workloadsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowUri': ?airflowUri,
      'dagGcsPrefix': ?dagGcsPrefix,
      'dataRetentionConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigDataRetentionConfig, Map<String, dynamic>>(dataRetentionConfig, (value) => value.toMap()),
      'databaseConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigDatabaseConfig, Map<String, dynamic>>(databaseConfig, (value) => value.toMap()),
      'enablePrivateBuildsOnly': ?enablePrivateBuildsOnly,
      'enablePrivateEnvironment': ?enablePrivateEnvironment,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'environmentSize': ?environmentSize,
      'gkeCluster': ?gkeCluster,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigMasterAuthorizedNetworksConfig, Map<String, dynamic>>(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'privateEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigPrivateEnvironmentConfig, Map<String, dynamic>>(privateEnvironmentConfig, (value) => value.toMap()),
      'recoveryConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigRecoveryConfig, Map<String, dynamic>>(recoveryConfig, (value) => value.toMap()),
      'resilienceMode': ?resilienceMode,
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'webServerConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWebServerConfig, Map<String, dynamic>>(webServerConfig, (value) => value.toMap()),
      'webServerNetworkAccessControl': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWebServerNetworkAccessControl, Map<String, dynamic>>(webServerNetworkAccessControl, (value) => value.toMap()),
      'workloadsConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigWorkloadsConfig, Map<String, dynamic>>(workloadsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfig(
      airflowUri: map['airflowUri'] == null ? null : (map['airflowUri'] as String).input(),
      dagGcsPrefix: map['dagGcsPrefix'] == null ? null : (map['dagGcsPrefix'] as String).input(),
      dataRetentionConfig: map['dataRetentionConfig'] == null ? null : (EnvironmentConfigDataRetentionConfig.fromMap((map['dataRetentionConfig'] as Map).cast<String, dynamic>())).input(),
      databaseConfig: map['databaseConfig'] == null ? null : (EnvironmentConfigDatabaseConfig.fromMap((map['databaseConfig'] as Map).cast<String, dynamic>())).input(),
      enablePrivateBuildsOnly: map['enablePrivateBuildsOnly'] == null ? null : (map['enablePrivateBuildsOnly'] as bool).input(),
      enablePrivateEnvironment: map['enablePrivateEnvironment'] == null ? null : (map['enablePrivateEnvironment'] as bool).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EnvironmentConfigEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      environmentSize: map['environmentSize'] == null ? null : (map['environmentSize'] as String).input(),
      gkeCluster: map['gkeCluster'] == null ? null : (map['gkeCluster'] as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (EnvironmentConfigMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      masterAuthorizedNetworksConfig: map['masterAuthorizedNetworksConfig'] == null ? null : (EnvironmentConfigMasterAuthorizedNetworksConfig.fromMap((map['masterAuthorizedNetworksConfig'] as Map).cast<String, dynamic>())).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (EnvironmentConfigNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      privateEnvironmentConfig: map['privateEnvironmentConfig'] == null ? null : (EnvironmentConfigPrivateEnvironmentConfig.fromMap((map['privateEnvironmentConfig'] as Map).cast<String, dynamic>())).input(),
      recoveryConfig: map['recoveryConfig'] == null ? null : (EnvironmentConfigRecoveryConfig.fromMap((map['recoveryConfig'] as Map).cast<String, dynamic>())).input(),
      resilienceMode: map['resilienceMode'] == null ? null : (map['resilienceMode'] as String).input(),
      softwareConfig: map['softwareConfig'] == null ? null : (EnvironmentConfigSoftwareConfig.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>())).input(),
      webServerConfig: map['webServerConfig'] == null ? null : (EnvironmentConfigWebServerConfig.fromMap((map['webServerConfig'] as Map).cast<String, dynamic>())).input(),
      webServerNetworkAccessControl: map['webServerNetworkAccessControl'] == null ? null : (EnvironmentConfigWebServerNetworkAccessControl.fromMap((map['webServerNetworkAccessControl'] as Map).cast<String, dynamic>())).input(),
      workloadsConfig: map['workloadsConfig'] == null ? null : (EnvironmentConfigWorkloadsConfig.fromMap((map['workloadsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

