// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_config_composer_v1beta1.dart';
import 'encryption_config_composer_v1beta1.dart';
import 'environment_config_environment_size_composer_v1beta1.dart';
import 'environment_config_resilience_mode_composer_v1beta1.dart';
import 'maintenance_window_composer_v1beta1.dart';
import 'master_authorized_networks_config_composer_v1beta1.dart';
import 'node_config_composer_v1beta1.dart';
import 'private_environment_config_composer_v1beta1.dart';
import 'recovery_config_composer_v1beta1.dart';
import 'software_config_composer_v1beta1.dart';
import 'web_server_config_composer_v1beta1.dart';
import 'web_server_network_access_control_composer_v1beta1.dart';
import 'workloads_config_composer_v1beta1.dart';

/// Configuration information for an environment.
class EnvironmentConfigComposerV1beta1 {
  /// Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  final pulumi.Input<DatabaseConfigComposerV1beta1>? databaseConfig;

  /// Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  final pulumi.Input<EncryptionConfigComposerV1beta1>? encryptionConfig;

  /// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<EnvironmentConfigEnvironmentSizeComposerV1beta1>?
  environmentSize;

  /// Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, Cloud Composer components may be subject to maintenance at any time.
  final pulumi.Input<MaintenanceWindowComposerV1beta1>? maintenanceWindow;

  /// Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  final pulumi.Input<MasterAuthorizedNetworksConfigComposerV1beta1>?
  masterAuthorizedNetworksConfig;

  /// The configuration used for the Kubernetes Engine cluster.
  final pulumi.Input<NodeConfigComposerV1beta1>? nodeConfig;

  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int>? nodeCount;

  /// The configuration used for the Private IP Cloud Composer environment.
  final pulumi.Input<PrivateEnvironmentConfigComposerV1beta1>?
  privateEnvironmentConfig;

  /// Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<RecoveryConfigComposerV1beta1>? recoveryConfig;

  /// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  final pulumi.Input<EnvironmentConfigResilienceModeComposerV1beta1>?
  resilienceMode;

  /// The configuration settings for software inside the environment.
  final pulumi.Input<SoftwareConfigComposerV1beta1>? softwareConfig;

  /// Optional. The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<WebServerConfigComposerV1beta1>? webServerConfig;

  /// Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  final pulumi.Input<WebServerNetworkAccessControlComposerV1beta1>?
  webServerNetworkAccessControl;

  /// Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<WorkloadsConfigComposerV1beta1>? workloadsConfig;

  /// Creates a new [EnvironmentConfigComposerV1beta1].
  /// [databaseConfig] Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  /// [encryptionConfig] Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  /// [environmentSize] Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [maintenanceWindow] Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, Cloud Composer components may be subject to maintenance at any time.
  /// [masterAuthorizedNetworksConfig] Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  /// [nodeConfig] The configuration used for the Kubernetes Engine cluster.
  /// [nodeCount] The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [privateEnvironmentConfig] The configuration used for the Private IP Cloud Composer environment.
  /// [recoveryConfig] Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [resilienceMode] Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  /// [softwareConfig] The configuration settings for software inside the environment.
  /// [webServerConfig] Optional. The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  /// [webServerNetworkAccessControl] Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  /// [workloadsConfig] Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  EnvironmentConfigComposerV1beta1({
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
      'databaseConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseConfigComposerV1beta1,
            Map<String, dynamic>
          >(databaseConfig, (value) => value.toMap()),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfigComposerV1beta1,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'environmentSize':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentConfigEnvironmentSizeComposerV1beta1,
            String
          >(environmentSize, (value) => value.wireValue),
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            MaintenanceWindowComposerV1beta1,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MasterAuthorizedNetworksConfigComposerV1beta1,
            Map<String, dynamic>
          >(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'nodeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NodeConfigComposerV1beta1,
            Map<String, dynamic>
          >(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'privateEnvironmentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEnvironmentConfigComposerV1beta1,
            Map<String, dynamic>
          >(privateEnvironmentConfig, (value) => value.toMap()),
      'recoveryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RecoveryConfigComposerV1beta1,
            Map<String, dynamic>
          >(recoveryConfig, (value) => value.toMap()),
      'resilienceMode':
          ?pulumi.Input.mapOptionalInputValue<
            EnvironmentConfigResilienceModeComposerV1beta1,
            String
          >(resilienceMode, (value) => value.wireValue),
      'softwareConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SoftwareConfigComposerV1beta1,
            Map<String, dynamic>
          >(softwareConfig, (value) => value.toMap()),
      'webServerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WebServerConfigComposerV1beta1,
            Map<String, dynamic>
          >(webServerConfig, (value) => value.toMap()),
      'webServerNetworkAccessControl':
          ?pulumi.Input.mapOptionalInputValue<
            WebServerNetworkAccessControlComposerV1beta1,
            Map<String, dynamic>
          >(webServerNetworkAccessControl, (value) => value.toMap()),
      'workloadsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadsConfigComposerV1beta1,
            Map<String, dynamic>
          >(workloadsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigComposerV1beta1(
      databaseConfig: (() {
        final guardedValue = map['databaseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      environmentSize: (() {
        final guardedValue = map['environmentSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentConfigEnvironmentSizeComposerV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      maintenanceWindow: (() {
        final guardedValue = map['maintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MaintenanceWindowComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      masterAuthorizedNetworksConfig: (() {
        final guardedValue = map['masterAuthorizedNetworksConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MasterAuthorizedNetworksConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nodeConfig: (() {
        final guardedValue = map['nodeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      privateEnvironmentConfig: (() {
        final guardedValue = map['privateEnvironmentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEnvironmentConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recoveryConfig: (() {
        final guardedValue = map['recoveryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RecoveryConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resilienceMode: (() {
        final guardedValue = map['resilienceMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnvironmentConfigResilienceModeComposerV1beta1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      softwareConfig: (() {
        final guardedValue = map['softwareConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SoftwareConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webServerConfig: (() {
        final guardedValue = map['webServerConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebServerConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      webServerNetworkAccessControl: (() {
        final guardedValue = map['webServerNetworkAccessControl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebServerNetworkAccessControlComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      workloadsConfig: (() {
        final guardedValue = map['workloadsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadsConfigComposerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
