// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_config.dart';
import 'encryption_config.dart';
import 'environment_config_environment_size.dart';
import 'environment_config_resilience_mode.dart';
import 'maintenance_window.dart';
import 'master_authorized_networks_config.dart';
import 'node_config.dart';
import 'private_environment_config.dart';
import 'recovery_config.dart';
import 'software_config.dart';
import 'web_server_config.dart';
import 'web_server_network_access_control.dart';
import 'workloads_config.dart';

/// Configuration information for an environment.
class EnvironmentConfig {
  /// Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  final pulumi.Input<DatabaseConfig>? databaseConfig;
  /// Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<EnvironmentConfigEnvironmentSize>? environmentSize;
  /// Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, the default value for maintenance window will be applied. The default value is Saturday and Sunday 00-06 GMT.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;
  /// Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  final pulumi.Input<MasterAuthorizedNetworksConfig>? masterAuthorizedNetworksConfig;
  /// The configuration used for the Kubernetes Engine cluster.
  final pulumi.Input<NodeConfig>? nodeConfig;
  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int>? nodeCount;
  /// The configuration used for the Private IP Cloud Composer environment.
  final pulumi.Input<PrivateEnvironmentConfig>? privateEnvironmentConfig;
  /// Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<RecoveryConfig>? recoveryConfig;
  /// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  final pulumi.Input<EnvironmentConfigResilienceMode>? resilienceMode;
  /// The configuration settings for software inside the environment.
  final pulumi.Input<SoftwareConfig>? softwareConfig;
  /// Optional. The configuration settings for the Airflow web server App Engine instance.
  final pulumi.Input<WebServerConfig>? webServerConfig;
  /// Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  final pulumi.Input<WebServerNetworkAccessControl>? webServerNetworkAccessControl;
  /// Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<WorkloadsConfig>? workloadsConfig;

  /// Creates a new [EnvironmentConfig].
  /// [databaseConfig] Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  /// [encryptionConfig] Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  /// [environmentSize] Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [maintenanceWindow] Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, the default value for maintenance window will be applied. The default value is Saturday and Sunday 00-06 GMT.
  /// [masterAuthorizedNetworksConfig] Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  /// [nodeConfig] The configuration used for the Kubernetes Engine cluster.
  /// [nodeCount] The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [privateEnvironmentConfig] The configuration used for the Private IP Cloud Composer environment.
  /// [recoveryConfig] Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [resilienceMode] Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  /// [softwareConfig] The configuration settings for software inside the environment.
  /// [webServerConfig] Optional. The configuration settings for the Airflow web server App Engine instance.
  /// [webServerNetworkAccessControl] Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  /// [workloadsConfig] Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  EnvironmentConfig({
    this.databaseConfig,
    this.encryptionConfig,
    this.environmentSize,
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
      'databaseConfig': ?pulumi.Input.mapOptionalInputValue<DatabaseConfig, Map<String, dynamic>>(databaseConfig, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'environmentSize': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigEnvironmentSize, String>(environmentSize, (value) => value.value),
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig': ?pulumi.Input.mapOptionalInputValue<MasterAuthorizedNetworksConfig, Map<String, dynamic>>(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<NodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'privateEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<PrivateEnvironmentConfig, Map<String, dynamic>>(privateEnvironmentConfig, (value) => value.toMap()),
      'recoveryConfig': ?pulumi.Input.mapOptionalInputValue<RecoveryConfig, Map<String, dynamic>>(recoveryConfig, (value) => value.toMap()),
      'resilienceMode': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfigResilienceMode, String>(resilienceMode, (value) => value.value),
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<SoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'webServerConfig': ?pulumi.Input.mapOptionalInputValue<WebServerConfig, Map<String, dynamic>>(webServerConfig, (value) => value.toMap()),
      'webServerNetworkAccessControl': ?pulumi.Input.mapOptionalInputValue<WebServerNetworkAccessControl, Map<String, dynamic>>(webServerNetworkAccessControl, (value) => value.toMap()),
      'workloadsConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadsConfig, Map<String, dynamic>>(workloadsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfig(
      databaseConfig: map['databaseConfig'] == null ? null : (DatabaseConfig.fromMap((map['databaseConfig'] as Map).cast<String, dynamic>())).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      environmentSize: map['environmentSize'] == null ? null : (EnvironmentConfigEnvironmentSize.fromValue(map['environmentSize'] as String)).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (MaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      masterAuthorizedNetworksConfig: map['masterAuthorizedNetworksConfig'] == null ? null : (MasterAuthorizedNetworksConfig.fromMap((map['masterAuthorizedNetworksConfig'] as Map).cast<String, dynamic>())).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (NodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      privateEnvironmentConfig: map['privateEnvironmentConfig'] == null ? null : (PrivateEnvironmentConfig.fromMap((map['privateEnvironmentConfig'] as Map).cast<String, dynamic>())).input(),
      recoveryConfig: map['recoveryConfig'] == null ? null : (RecoveryConfig.fromMap((map['recoveryConfig'] as Map).cast<String, dynamic>())).input(),
      resilienceMode: map['resilienceMode'] == null ? null : (EnvironmentConfigResilienceMode.fromValue(map['resilienceMode'] as String)).input(),
      softwareConfig: map['softwareConfig'] == null ? null : (SoftwareConfig.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>())).input(),
      webServerConfig: map['webServerConfig'] == null ? null : (WebServerConfig.fromMap((map['webServerConfig'] as Map).cast<String, dynamic>())).input(),
      webServerNetworkAccessControl: map['webServerNetworkAccessControl'] == null ? null : (WebServerNetworkAccessControl.fromMap((map['webServerNetworkAccessControl'] as Map).cast<String, dynamic>())).input(),
      workloadsConfig: map['workloadsConfig'] == null ? null : (WorkloadsConfig.fromMap((map['workloadsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

