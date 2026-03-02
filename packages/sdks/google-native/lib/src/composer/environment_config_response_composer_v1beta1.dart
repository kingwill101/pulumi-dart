// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_config_response_composer_v1beta1.dart';
import 'encryption_config_response_composer_v1beta1.dart';
import 'maintenance_window_response_composer_v1beta1.dart';
import 'master_authorized_networks_config_response_composer_v1beta1.dart';
import 'node_config_response_composer_v1beta1.dart';
import 'private_environment_config_response_composer_v1beta1.dart';
import 'recovery_config_response_composer_v1beta1.dart';
import 'software_config_response_composer_v1beta1.dart';
import 'web_server_config_response_composer_v1beta1.dart';
import 'web_server_network_access_control_response_composer_v1beta1.dart';
import 'workloads_config_response_composer_v1beta1.dart';

/// Configuration information for an environment.
class EnvironmentConfigResponseComposerV1beta1 {
  /// The 'bring your own identity' variant of the URI of the Apache Airflow Web UI hosted within this environment, to be accessed with external identities using workforce identity federation (see [Access environments with workforce identity federation](/composer/docs/composer-2/access-environments-with-workforce-identity-federation)).
  final pulumi.Input<String> airflowByoidUri;
  /// The URI of the Apache Airflow Web UI hosted within this environment (see [Airflow web interface](/composer/docs/how-to/accessing/airflow-web-interface)).
  final pulumi.Input<String> airflowUri;
  /// The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage objects reside in a flat namespace, a hierarchical file tree can be simulated using "/"-delimited object name prefixes. DAG objects for this environment reside in a simulated directory with the given prefix.
  final pulumi.Input<String> dagGcsPrefix;
  /// Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  final pulumi.Input<DatabaseConfigResponseComposerV1beta1> databaseConfig;
  /// Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  final pulumi.Input<EncryptionConfigResponseComposerV1beta1> encryptionConfig;
  /// Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<String> environmentSize;
  /// The Kubernetes Engine cluster used to run this environment.
  final pulumi.Input<String> gkeCluster;
  /// Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, Cloud Composer components may be subject to maintenance at any time.
  final pulumi.Input<MaintenanceWindowResponseComposerV1beta1> maintenanceWindow;
  /// Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
  final pulumi.Input<MasterAuthorizedNetworksConfigResponseComposerV1beta1> masterAuthorizedNetworksConfig;
  /// The configuration used for the Kubernetes Engine cluster.
  final pulumi.Input<NodeConfigResponseComposerV1beta1> nodeConfig;
  /// The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<int> nodeCount;
  /// The configuration used for the Private IP Cloud Composer environment.
  final pulumi.Input<PrivateEnvironmentConfigResponseComposerV1beta1> privateEnvironmentConfig;
  /// Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<RecoveryConfigResponseComposerV1beta1> recoveryConfig;
  /// Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-*.*.* and newer.
  final pulumi.Input<String> resilienceMode;
  /// The configuration settings for software inside the environment.
  final pulumi.Input<SoftwareConfigResponseComposerV1beta1> softwareConfig;
  /// Optional. The configuration settings for the Airflow web server App Engine instance. This field is supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
  final pulumi.Input<WebServerConfigResponseComposerV1beta1> webServerConfig;
  /// Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
  final pulumi.Input<WebServerNetworkAccessControlResponseComposerV1beta1> webServerNetworkAccessControl;
  /// Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  final pulumi.Input<WorkloadsConfigResponseComposerV1beta1> workloadsConfig;

  /// Creates a new [EnvironmentConfigResponseComposerV1beta1].
  /// [airflowByoidUri] The 'bring your own identity' variant of the URI of the Apache Airflow Web UI hosted within this environment, to be accessed with external identities using workforce identity federation (see [Access environments with workforce identity federation](/composer/docs/composer-2/access-environments-with-workforce-identity-federation)).
  /// [airflowUri] The URI of the Apache Airflow Web UI hosted within this environment (see [Airflow web interface](/composer/docs/how-to/accessing/airflow-web-interface)).
  /// [dagGcsPrefix] The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage objects reside in a flat namespace, a hierarchical file tree can be simulated using "/"-delimited object name prefixes. DAG objects for this environment reside in a simulated directory with the given prefix.
  /// [databaseConfig] Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
  /// [encryptionConfig] Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
  /// [environmentSize] Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2.*.*-airflow-*.*.* and newer.
  /// [gkeCluster] The Kubernetes Engine cluster used to run this environment.
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
  EnvironmentConfigResponseComposerV1beta1({
    required this.airflowByoidUri,
    required this.airflowUri,
    required this.dagGcsPrefix,
    required this.databaseConfig,
    required this.encryptionConfig,
    required this.environmentSize,
    required this.gkeCluster,
    required this.maintenanceWindow,
    required this.masterAuthorizedNetworksConfig,
    required this.nodeConfig,
    required this.nodeCount,
    required this.privateEnvironmentConfig,
    required this.recoveryConfig,
    required this.resilienceMode,
    required this.softwareConfig,
    required this.webServerConfig,
    required this.webServerNetworkAccessControl,
    required this.workloadsConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'airflowByoidUri': airflowByoidUri,
      'airflowUri': airflowUri,
      'dagGcsPrefix': dagGcsPrefix,
      'databaseConfig': pulumi.Input.mapInputValue<DatabaseConfigResponseComposerV1beta1, Map<String, dynamic>>(databaseConfig, (value) => value.toMap()),
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponseComposerV1beta1, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'environmentSize': environmentSize,
      'gkeCluster': gkeCluster,
      'maintenanceWindow': pulumi.Input.mapInputValue<MaintenanceWindowResponseComposerV1beta1, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'masterAuthorizedNetworksConfig': pulumi.Input.mapInputValue<MasterAuthorizedNetworksConfigResponseComposerV1beta1, Map<String, dynamic>>(masterAuthorizedNetworksConfig, (value) => value.toMap()),
      'nodeConfig': pulumi.Input.mapInputValue<NodeConfigResponseComposerV1beta1, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'privateEnvironmentConfig': pulumi.Input.mapInputValue<PrivateEnvironmentConfigResponseComposerV1beta1, Map<String, dynamic>>(privateEnvironmentConfig, (value) => value.toMap()),
      'recoveryConfig': pulumi.Input.mapInputValue<RecoveryConfigResponseComposerV1beta1, Map<String, dynamic>>(recoveryConfig, (value) => value.toMap()),
      'resilienceMode': resilienceMode,
      'softwareConfig': pulumi.Input.mapInputValue<SoftwareConfigResponseComposerV1beta1, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'webServerConfig': pulumi.Input.mapInputValue<WebServerConfigResponseComposerV1beta1, Map<String, dynamic>>(webServerConfig, (value) => value.toMap()),
      'webServerNetworkAccessControl': pulumi.Input.mapInputValue<WebServerNetworkAccessControlResponseComposerV1beta1, Map<String, dynamic>>(webServerNetworkAccessControl, (value) => value.toMap()),
      'workloadsConfig': pulumi.Input.mapInputValue<WorkloadsConfigResponseComposerV1beta1, Map<String, dynamic>>(workloadsConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigResponseComposerV1beta1(
      airflowByoidUri: (map['airflowByoidUri'] as String).input(),
      airflowUri: (map['airflowUri'] as String).input(),
      dagGcsPrefix: (map['dagGcsPrefix'] as String).input(),
      databaseConfig: (DatabaseConfigResponseComposerV1beta1.fromMap((map['databaseConfig'] as Map).cast<String, dynamic>())).input(),
      encryptionConfig: (EncryptionConfigResponseComposerV1beta1.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      environmentSize: (map['environmentSize'] as String).input(),
      gkeCluster: (map['gkeCluster'] as String).input(),
      maintenanceWindow: (MaintenanceWindowResponseComposerV1beta1.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      masterAuthorizedNetworksConfig: (MasterAuthorizedNetworksConfigResponseComposerV1beta1.fromMap((map['masterAuthorizedNetworksConfig'] as Map).cast<String, dynamic>())).input(),
      nodeConfig: (NodeConfigResponseComposerV1beta1.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      privateEnvironmentConfig: (PrivateEnvironmentConfigResponseComposerV1beta1.fromMap((map['privateEnvironmentConfig'] as Map).cast<String, dynamic>())).input(),
      recoveryConfig: (RecoveryConfigResponseComposerV1beta1.fromMap((map['recoveryConfig'] as Map).cast<String, dynamic>())).input(),
      resilienceMode: (map['resilienceMode'] as String).input(),
      softwareConfig: (SoftwareConfigResponseComposerV1beta1.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>())).input(),
      webServerConfig: (WebServerConfigResponseComposerV1beta1.fromMap((map['webServerConfig'] as Map).cast<String, dynamic>())).input(),
      webServerNetworkAccessControl: (WebServerNetworkAccessControlResponseComposerV1beta1.fromMap((map['webServerNetworkAccessControl'] as Map).cast<String, dynamic>())).input(),
      workloadsConfig: (WorkloadsConfigResponseComposerV1beta1.fromMap((map['workloadsConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

