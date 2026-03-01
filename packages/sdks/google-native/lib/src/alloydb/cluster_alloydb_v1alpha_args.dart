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
  ClusterAlloydbV1alphaArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<AutomatedBackupPolicyAlloydbV1alpha>? automatedBackupPolicy,
    required pulumi.Output<String> clusterId,
    pulumi.Output<ContinuousBackupConfigAlloydbV1alpha>? continuousBackupConfig,
    pulumi.Output<ClusterDatabaseVersionAlloydbV1alpha>? databaseVersion,
    pulumi.Output<String>? displayName,
    pulumi.Output<EncryptionConfigAlloydbV1alpha>? encryptionConfig,
    pulumi.Output<String>? etag,
    pulumi.Output<UserPasswordAlloydbV1alpha>? initialUser,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> network,
    pulumi.Output<NetworkConfigAlloydbV1alpha>? networkConfig,
    pulumi.Output<String>? project,
    pulumi.Output<PscConfig>? pscConfig,
    pulumi.Output<String>? requestId,
    pulumi.Output<SecondaryConfigAlloydbV1alpha>? secondaryConfig,
    pulumi.Output<SslConfigAlloydbV1alpha>? sslConfig,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      automatedBackupPolicy = pulumi.Input.asOptionalInput<AutomatedBackupPolicyAlloydbV1alpha>(automatedBackupPolicy),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      continuousBackupConfig = pulumi.Input.asOptionalInput<ContinuousBackupConfigAlloydbV1alpha>(continuousBackupConfig),
      databaseVersion = pulumi.Input.asOptionalInput<ClusterDatabaseVersionAlloydbV1alpha>(databaseVersion),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfigAlloydbV1alpha>(encryptionConfig),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      initialUser = pulumi.Input.asOptionalInput<UserPasswordAlloydbV1alpha>(initialUser),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      network = pulumi.Input.asInput<String>(network),
      networkConfig = pulumi.Input.asOptionalInput<NetworkConfigAlloydbV1alpha>(networkConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pscConfig = pulumi.Input.asOptionalInput<PscConfig>(pscConfig),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      secondaryConfig = pulumi.Input.asOptionalInput<SecondaryConfigAlloydbV1alpha>(secondaryConfig),
      sslConfig = pulumi.Input.asOptionalInput<SslConfigAlloydbV1alpha>(sslConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicy': ?pulumi.Input.mapOptionalInputValue<AutomatedBackupPolicyAlloydbV1alpha, Map<String, dynamic>>(automatedBackupPolicy, (value) => value.toMap()),
      'clusterId': clusterId,
      'continuousBackupConfig': ?pulumi.Input.mapOptionalInputValue<ContinuousBackupConfigAlloydbV1alpha, Map<String, dynamic>>(continuousBackupConfig, (value) => value.toMap()),
      'databaseVersion': ?pulumi.Input.mapOptionalInputValue<ClusterDatabaseVersionAlloydbV1alpha, String>(databaseVersion, (value) => value.value),
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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      automatedBackupPolicy: map['automatedBackupPolicy'] == null ? null : pulumi.Output.create<AutomatedBackupPolicyAlloydbV1alpha>(AutomatedBackupPolicyAlloydbV1alpha.fromMap((map['automatedBackupPolicy'] as Map).cast<String, dynamic>())),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      continuousBackupConfig: map['continuousBackupConfig'] == null ? null : pulumi.Output.create<ContinuousBackupConfigAlloydbV1alpha>(ContinuousBackupConfigAlloydbV1alpha.fromMap((map['continuousBackupConfig'] as Map).cast<String, dynamic>())),
      databaseVersion: map['databaseVersion'] == null ? null : pulumi.Output.create<ClusterDatabaseVersionAlloydbV1alpha>(ClusterDatabaseVersionAlloydbV1alpha.fromValue(map['databaseVersion'] as String)),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      encryptionConfig: map['encryptionConfig'] == null ? null : pulumi.Output.create<EncryptionConfigAlloydbV1alpha>(EncryptionConfigAlloydbV1alpha.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      initialUser: map['initialUser'] == null ? null : pulumi.Output.create<UserPasswordAlloydbV1alpha>(UserPasswordAlloydbV1alpha.fromMap((map['initialUser'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      network: pulumi.Output.create<String>(map['network'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<NetworkConfigAlloydbV1alpha>(NetworkConfigAlloydbV1alpha.fromMap((map['networkConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pscConfig: map['pscConfig'] == null ? null : pulumi.Output.create<PscConfig>(PscConfig.fromMap((map['pscConfig'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      secondaryConfig: map['secondaryConfig'] == null ? null : pulumi.Output.create<SecondaryConfigAlloydbV1alpha>(SecondaryConfigAlloydbV1alpha.fromMap((map['secondaryConfig'] as Map).cast<String, dynamic>())),
      sslConfig: map['sslConfig'] == null ? null : pulumi.Output.create<SslConfigAlloydbV1alpha>(SslConfigAlloydbV1alpha.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

