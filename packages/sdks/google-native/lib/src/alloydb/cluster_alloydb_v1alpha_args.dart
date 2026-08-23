// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automated_backup_policy_alloydb_v1alpha.dart';
import 'cluster_database_version_alloydb_v1alpha.dart';
import 'continuous_backup_config_alloydb_v1alpha.dart';
import 'encryption_config_alloydb_v1alpha.dart';
import 'network_config_alloydb_v1alpha.dart';
import 'psc_config.dart';
import 'secondary_config_alloydb_v1alpha.dart';
import 'ssl_config_alloydb_v1alpha.dart';
import 'user_password_alloydb_v1alpha.dart';

/// {@template pulumi_alloydb_v1alpha_cluster_alloydb_v1alpha_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_cluster_alloydb_v1alpha_args_doc}
class ClusterAlloydbV1alphaArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;
  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  final pulumi.Input<AutomatedBackupPolicyAlloydbV1alpha>? automatedBackupPolicy;
  /// Required. ID of the requesting object.
  final pulumi.Input<String> clusterId;
  /// Optional. Continuous backup configuration for this cluster.
  final pulumi.Input<ContinuousBackupConfigAlloydbV1alpha>? continuousBackupConfig;
  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final pulumi.Input<ClusterDatabaseVersionAlloydbV1alpha>? databaseVersion;
  /// User-settable and human-readable display name for the Cluster.
  final pulumi.Input<String>? displayName;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigAlloydbV1alpha>? encryptionConfig;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;
  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  final pulumi.Input<UserPasswordAlloydbV1alpha>? initialUser;
  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  final pulumi.Input<String> network;
  final pulumi.Input<NetworkConfigAlloydbV1alpha>? networkConfig;
  final pulumi.Input<String>? project;
  /// Optional. The configuration for Private Service Connect (PSC) for the cluster.
  final pulumi.Input<PscConfig>? pscConfig;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Cross Region replication config specific to SECONDARY cluster.
  final pulumi.Input<SecondaryConfigAlloydbV1alpha>? secondaryConfig;
  /// SSL configuration for this AlloyDB cluster.
  final pulumi.Input<SslConfigAlloydbV1alpha>? sslConfig;

  /// Creates a new [ClusterAlloydbV1alphaArgs].
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
  /// [pscConfig] Optional. The configuration for Private Service Connect (PSC) for the cluster.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [secondaryConfig] Cross Region replication config specific to SECONDARY cluster.
  /// [sslConfig] SSL configuration for this AlloyDB cluster.
  const ClusterAlloydbV1alphaArgs({
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
    this.pscConfig,
    this.requestId,
    this.secondaryConfig,
    this.sslConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicy': ?pulumi.Input.mapOptionalInputValue<AutomatedBackupPolicyAlloydbV1alpha, Map<String, dynamic>>(automatedBackupPolicy, (value) => value.toMap()),
      'clusterId': clusterId,
      'continuousBackupConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousBackupConfigAlloydbV1alpha, Map<String, dynamic>>(continuousBackupConfig, (value) => value.toMap()),
      'databaseVersion': ?pulumi.Input.mapOptionalInputValue<ClusterDatabaseVersionAlloydbV1alpha, String>(databaseVersion, (value) => value.wireValue),
      'displayName': ?displayName,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfigAlloydbV1alpha, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'etag': ?etag,
      'initialUser': ?pulumi.Input.mapOptionalInputValue<UserPasswordAlloydbV1alpha, Map<String, dynamic>>(initialUser, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'network': network,
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<NetworkConfigAlloydbV1alpha, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'project': ?project,
      'pscConfig': ?pulumi.Input.mapOptionalInputValue<PscConfig, Map<String, dynamic>>(pscConfig, (value) => value.toMap()),
      'requestId': ?requestId,
      'secondaryConfig': ?pulumi.Input.mapOptionalInputValue<SecondaryConfigAlloydbV1alpha, Map<String, dynamic>>(secondaryConfig, (value) => value.toMap()),
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<SslConfigAlloydbV1alpha, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
    };
  }

  factory ClusterAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ClusterAlloydbV1alphaArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      automatedBackupPolicy: (() { final guardedValue = map['automatedBackupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomatedBackupPolicyAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      continuousBackupConfig: (() { final guardedValue = map['continuousBackupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousBackupConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterDatabaseVersionAlloydbV1alpha.fromValue(guardedValue as String)); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialUser: (() { final guardedValue = map['initialUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPasswordAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscConfig: (() { final guardedValue = map['pscConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PscConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConfig: (() { final guardedValue = map['secondaryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecondaryConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfigAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
