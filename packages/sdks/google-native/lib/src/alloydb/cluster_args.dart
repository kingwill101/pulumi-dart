// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automated_backup_policy.dart';
import 'cluster_database_version.dart';
import 'continuous_backup_config.dart';
import 'encryption_config.dart';
import 'network_config.dart';
import 'secondary_config.dart';
import 'ssl_config.dart';
import 'user_password.dart';

/// {@template pulumi_alloydb_v1_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_cluster_args_doc}
class ClusterArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  final pulumi.Input<AutomatedBackupPolicy>? automatedBackupPolicy;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> clusterId;
  /// Optional. Continuous backup configuration for this cluster.
  final pulumi.Input<ContinuousBackupConfig>? continuousBackupConfig;
  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final pulumi.Input<ClusterDatabaseVersion>? databaseVersion;
  /// User-settable and human-readable display name for the Cluster.
  final pulumi.Input<String>? displayName;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  final pulumi.Input<UserPassword>? initialUser;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  final pulumi.Input<String> network;
  final pulumi.Input<NetworkConfig>? networkConfig;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Cross Region replication config specific to SECONDARY cluster.
  final pulumi.Input<SecondaryConfig>? secondaryConfig;
  /// SSL configuration for this AlloyDB cluster.
  final pulumi.Input<SslConfig>? sslConfig;

  /// Creates a new [ClusterArgs].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [automatedBackupPolicy] The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  /// [clusterId] Required. ID of the requesting object.
  /// [continuousBackupConfig] Optional. Continuous backup configuration for this cluster.
  /// [databaseVersion] Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  /// [displayName] User-settable and human-readable display name for the Cluster.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [initialUser] Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  /// [labels] Labels as key value pairs
  /// [location] Optional.
  /// [network] The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  /// [networkConfig] Optional.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [secondaryConfig] Cross Region replication config specific to SECONDARY cluster.
  /// [sslConfig] SSL configuration for this AlloyDB cluster.
  ClusterArgs({
    this.annotations,
    this.automatedBackupPolicy,
    required this.clusterId,
    this.continuousBackupConfig,
    this.databaseVersion,
    this.displayName,
    this.encryptionConfig,
    this.etag,
    this.initialUser,
    this.labels,
    this.location,
    required this.network,
    this.networkConfig,
    this.project,
    this.requestId,
    this.secondaryConfig,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicy': ?pulumi.Input.mapOptionalInputValue<AutomatedBackupPolicy, Map<String, dynamic>>(automatedBackupPolicy, (value) => value.toMap()),
      'clusterId': clusterId,
      'continuousBackupConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousBackupConfig, Map<String, dynamic>>(continuousBackupConfig, (value) => value.toMap()),
      'databaseVersion': ?pulumi.Input.mapOptionalInputValue<ClusterDatabaseVersion, String>(databaseVersion, (value) => value.value),
      'displayName': ?displayName,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'initialUser': ?pulumi.Input.mapOptionalInputValue<UserPassword, Map<String, dynamic>>(initialUser, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'network': network,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'secondaryConfig': ?pulumi.Input.mapOptionalInputValue<SecondaryConfig, Map<String, dynamic>>(secondaryConfig, (value) => value.toMap()),
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as Map).cast<String, String>()).input(),
      automatedBackupPolicy: map['automatedBackupPolicy'] == null ? null : (AutomatedBackupPolicy.fromMap((map['automatedBackupPolicy'] as Map).cast<String, dynamic>())).input(),
      clusterId: (map['clusterId'] as String).input(),
      continuousBackupConfig: map['continuousBackupConfig'] == null ? null : (ContinuousBackupConfig.fromMap((map['continuousBackupConfig'] as Map).cast<String, dynamic>())).input(),
      databaseVersion: map['databaseVersion'] == null ? null : (ClusterDatabaseVersion.fromValue(map['databaseVersion'] as String)).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      initialUser: map['initialUser'] == null ? null : (UserPassword.fromMap((map['initialUser'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      network: (map['network'] as String).input(),
      networkConfig: map['networkConfig'] == null ? null : (NetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      secondaryConfig: map['secondaryConfig'] == null ? null : (SecondaryConfig.fromMap((map['secondaryConfig'] as Map).cast<String, dynamic>())).input(),
      sslConfig: map['sslConfig'] == null ? null : (SslConfig.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

