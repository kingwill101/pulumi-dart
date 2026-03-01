// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_config_data_retention_config.dart';
import 'get_environment_config_database_config.dart';
import 'get_environment_config_encryption_config.dart';
import 'get_environment_config_maintenance_window.dart';
import 'get_environment_config_master_authorized_networks_config.dart';
import 'get_environment_config_node_config.dart';
import 'get_environment_config_private_environment_config.dart';
import 'get_environment_config_recovery_config.dart';
import 'get_environment_config_software_config.dart';
import 'get_environment_config_web_server_config.dart';
import 'get_environment_config_web_server_network_access_control.dart';
import 'get_environment_config_workloads_config.dart';

class GetEnvironmentConfig {
  /// The URI of the Apache Airflow Web UI hosted within the
  /// environment.
  final String airflowUri;
  /// The Cloud Storage prefix of the DAGs for the environment.
  final String dagGcsPrefix;
  /// The configuration setting for Airflow data retention mechanism. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4. or newer
  final List<GetEnvironmentConfigDataRetentionConfig> dataRetentionConfigs;
  /// The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final List<GetEnvironmentConfigDatabaseConfig> databaseConfigs;
  /// Optional. If true, builds performed during operations that install Python packages have only private connectivity to Google services. If false, the builds also have access to the internet.
  final bool enablePrivateBuildsOnly;
  /// Optional. If true, a private Composer environment will be created.
  final bool enablePrivateEnvironment;
  /// The encryption options for the Composer environment and its dependencies.
  final List<GetEnvironmentConfigEncryptionConfig> encryptionConfigs;
  /// The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final String environmentSize;
  /// The Kubernetes Engine cluster used to run the environment.
  final String gkeCluster;
  /// The configuration for Cloud Composer maintenance window.
  final List<GetEnvironmentConfigMaintenanceWindow> maintenanceWindows;
  /// Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
  final List<GetEnvironmentConfigMasterAuthorizedNetworksConfig> masterAuthorizedNetworksConfigs;
  /// The configuration used for the Kubernetes Engine cluster.
  final List<GetEnvironmentConfigNodeConfig> nodeConfigs;
  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final int nodeCount;
  /// The configuration used for the Private IP Cloud Composer environment.
  final List<GetEnvironmentConfigPrivateEnvironmentConfig> privateEnvironmentConfigs;
  /// The recovery configuration settings for the Cloud Composer environment
  final List<GetEnvironmentConfigRecoveryConfig> recoveryConfigs;
  /// Whether high resilience is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.1.15-airflow-*.*.* and newer.
  final String resilienceMode;
  /// The configuration settings for software inside the environment.
  final List<GetEnvironmentConfigSoftwareConfig> softwareConfigs;
  /// The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final List<GetEnvironmentConfigWebServerConfig> webServerConfigs;
  /// Network-level access control policy for the Airflow web server.
  final List<GetEnvironmentConfigWebServerNetworkAccessControl> webServerNetworkAccessControls;
  /// The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final List<GetEnvironmentConfigWorkloadsConfig> workloadsConfigs;

  /// Creates a new [GetEnvironmentConfig].
  /// [airflowUri] The URI of the Apache Airflow Web UI hosted within the
  /// [dagGcsPrefix] The Cloud Storage prefix of the DAGs for the environment.
  /// [dataRetentionConfigs] The configuration setting for Airflow data retention mechanism. This field is supported for Cloud Composer environments in versions composer-2.0.32-airflow-2.1.4. or newer
  /// [databaseConfigs] The configuration of Cloud SQL instance that is used by the Apache Airflow software. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [enablePrivateBuildsOnly] Optional. If true, builds performed during operations that install Python packages have only private connectivity to Google services. If false, the builds also have access to the internet.
  /// [enablePrivateEnvironment] Optional. If true, a private Composer environment will be created.
  /// [encryptionConfigs] The encryption options for the Composer environment and its dependencies.
  /// [environmentSize] The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [gkeCluster] The Kubernetes Engine cluster used to run the environment.
  /// [maintenanceWindows] The configuration for Cloud Composer maintenance window.
  /// [masterAuthorizedNetworksConfigs] Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
  /// [nodeConfigs] The configuration used for the Kubernetes Engine cluster.
  /// [nodeCount] The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [privateEnvironmentConfigs] The configuration used for the Private IP Cloud Composer environment.
  /// [recoveryConfigs] The recovery configuration settings for the Cloud Composer environment
  /// [resilienceMode] Whether high resilience is enabled or not. This field is supported for Cloud Composer environments in versions composer-2.1.15-airflow-*.*.* and newer.
  /// [softwareConfigs] The configuration settings for software inside the environment.
  /// [webServerConfigs] The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [webServerNetworkAccessControls] Network-level access control policy for the Airflow web server.
  /// [workloadsConfigs] The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  GetEnvironmentConfig({
    required this.airflowUri,
    required this.dagGcsPrefix,
    required this.dataRetentionConfigs,
    required this.databaseConfigs,
    required this.enablePrivateBuildsOnly,
    required this.enablePrivateEnvironment,
    required this.encryptionConfigs,
    required this.environmentSize,
    required this.gkeCluster,
    required this.maintenanceWindows,
    required this.masterAuthorizedNetworksConfigs,
    required this.nodeConfigs,
    required this.nodeCount,
    required this.privateEnvironmentConfigs,
    required this.recoveryConfigs,
    required this.resilienceMode,
    required this.softwareConfigs,
    required this.webServerConfigs,
    required this.webServerNetworkAccessControls,
    required this.workloadsConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowUri': airflowUri,
      'dagGcsPrefix': dagGcsPrefix,
      'dataRetentionConfigs': pulumi.Input.encodeList<GetEnvironmentConfigDataRetentionConfig, Map<String, dynamic>>(dataRetentionConfigs, (value) => value.toMap()),
      'databaseConfigs': pulumi.Input.encodeList<GetEnvironmentConfigDatabaseConfig, Map<String, dynamic>>(databaseConfigs, (value) => value.toMap()),
      'enablePrivateBuildsOnly': enablePrivateBuildsOnly,
      'enablePrivateEnvironment': enablePrivateEnvironment,
      'encryptionConfigs': pulumi.Input.encodeList<GetEnvironmentConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap()),
      'environmentSize': environmentSize,
      'gkeCluster': gkeCluster,
      'maintenanceWindows': pulumi.Input.encodeList<GetEnvironmentConfigMaintenanceWindow, Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap()),
      'masterAuthorizedNetworksConfigs': pulumi.Input.encodeList<GetEnvironmentConfigMasterAuthorizedNetworksConfig, Map<String, dynamic>>(masterAuthorizedNetworksConfigs, (value) => value.toMap()),
      'nodeConfigs': pulumi.Input.encodeList<GetEnvironmentConfigNodeConfig, Map<String, dynamic>>(nodeConfigs, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'privateEnvironmentConfigs': pulumi.Input.encodeList<GetEnvironmentConfigPrivateEnvironmentConfig, Map<String, dynamic>>(privateEnvironmentConfigs, (value) => value.toMap()),
      'recoveryConfigs': pulumi.Input.encodeList<GetEnvironmentConfigRecoveryConfig, Map<String, dynamic>>(recoveryConfigs, (value) => value.toMap()),
      'resilienceMode': resilienceMode,
      'softwareConfigs': pulumi.Input.encodeList<GetEnvironmentConfigSoftwareConfig, Map<String, dynamic>>(softwareConfigs, (value) => value.toMap()),
      'webServerConfigs': pulumi.Input.encodeList<GetEnvironmentConfigWebServerConfig, Map<String, dynamic>>(webServerConfigs, (value) => value.toMap()),
      'webServerNetworkAccessControls': pulumi.Input.encodeList<GetEnvironmentConfigWebServerNetworkAccessControl, Map<String, dynamic>>(webServerNetworkAccessControls, (value) => value.toMap()),
      'workloadsConfigs': pulumi.Input.encodeList<GetEnvironmentConfigWorkloadsConfig, Map<String, dynamic>>(workloadsConfigs, (value) => value.toMap()),
    };
  }

  factory GetEnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfig(
      airflowUri: map['airflowUri'] as String,
      dagGcsPrefix: map['dagGcsPrefix'] as String,
      dataRetentionConfigs: pulumi.Input.decodeList<GetEnvironmentConfigDataRetentionConfig>(map['dataRetentionConfigs'], (value) => GetEnvironmentConfigDataRetentionConfig.fromMap((value as Map).cast<String, dynamic>())),
      databaseConfigs: pulumi.Input.decodeList<GetEnvironmentConfigDatabaseConfig>(map['databaseConfigs'], (value) => GetEnvironmentConfigDatabaseConfig.fromMap((value as Map).cast<String, dynamic>())),
      enablePrivateBuildsOnly: map['enablePrivateBuildsOnly'] as bool,
      enablePrivateEnvironment: map['enablePrivateEnvironment'] as bool,
      encryptionConfigs: pulumi.Input.decodeList<GetEnvironmentConfigEncryptionConfig>(map['encryptionConfigs'], (value) => GetEnvironmentConfigEncryptionConfig.fromMap((value as Map).cast<String, dynamic>())),
      environmentSize: map['environmentSize'] as String,
      gkeCluster: map['gkeCluster'] as String,
      maintenanceWindows: pulumi.Input.decodeList<GetEnvironmentConfigMaintenanceWindow>(map['maintenanceWindows'], (value) => GetEnvironmentConfigMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())),
      masterAuthorizedNetworksConfigs: pulumi.Input.decodeList<GetEnvironmentConfigMasterAuthorizedNetworksConfig>(map['masterAuthorizedNetworksConfigs'], (value) => GetEnvironmentConfigMasterAuthorizedNetworksConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodeConfigs: pulumi.Input.decodeList<GetEnvironmentConfigNodeConfig>(map['nodeConfigs'], (value) => GetEnvironmentConfigNodeConfig.fromMap((value as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] as int,
      privateEnvironmentConfigs: pulumi.Input.decodeList<GetEnvironmentConfigPrivateEnvironmentConfig>(map['privateEnvironmentConfigs'], (value) => GetEnvironmentConfigPrivateEnvironmentConfig.fromMap((value as Map).cast<String, dynamic>())),
      recoveryConfigs: pulumi.Input.decodeList<GetEnvironmentConfigRecoveryConfig>(map['recoveryConfigs'], (value) => GetEnvironmentConfigRecoveryConfig.fromMap((value as Map).cast<String, dynamic>())),
      resilienceMode: map['resilienceMode'] as String,
      softwareConfigs: pulumi.Input.decodeList<GetEnvironmentConfigSoftwareConfig>(map['softwareConfigs'], (value) => GetEnvironmentConfigSoftwareConfig.fromMap((value as Map).cast<String, dynamic>())),
      webServerConfigs: pulumi.Input.decodeList<GetEnvironmentConfigWebServerConfig>(map['webServerConfigs'], (value) => GetEnvironmentConfigWebServerConfig.fromMap((value as Map).cast<String, dynamic>())),
      webServerNetworkAccessControls: pulumi.Input.decodeList<GetEnvironmentConfigWebServerNetworkAccessControl>(map['webServerNetworkAccessControls'], (value) => GetEnvironmentConfigWebServerNetworkAccessControl.fromMap((value as Map).cast<String, dynamic>())),
      workloadsConfigs: pulumi.Input.decodeList<GetEnvironmentConfigWorkloadsConfig>(map['workloadsConfigs'], (value) => GetEnvironmentConfigWorkloadsConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

