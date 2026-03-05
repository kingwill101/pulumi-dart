// ignore_for_file: unused_element, unnecessary_cast

import 'automated_backup_policy_response_alloydb_v1alpha.dart';
import 'backup_source_response_alloydb_v1alpha.dart';
import 'continuous_backup_config_response_alloydb_v1alpha.dart';
import 'continuous_backup_info_response_alloydb_v1alpha.dart';
import 'encryption_config_response_alloydb_v1alpha.dart';
import 'encryption_info_response_alloydb_v1alpha.dart';
import 'migration_source_response_alloydb_v1alpha.dart';
import 'network_config_response_alloydb_v1alpha.dart';
import 'primary_config_response_alloydb_v1alpha.dart';
import 'psc_config_response.dart';
import 'secondary_config_response_alloydb_v1alpha.dart';
import 'ssl_config_response_alloydb_v1alpha.dart';
import 'user_password_response_alloydb_v1alpha.dart';

/// Result data returned by getCluster.
class GetClusterAlloydbV1alphaResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String> annotations;
  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  final AutomatedBackupPolicyResponseAlloydbV1alpha automatedBackupPolicy;
  /// Cluster created from backup.
  final BackupSourceResponseAlloydbV1alpha backupSource;
  /// The type of the cluster. This is an output-only field and it's populated at the Cluster creation time or the Cluster promotion time. The cluster type is determined by which RPC was used to create the cluster (i.e. `CreateCluster` vs. `CreateSecondaryCluster`
  final String clusterType;
  /// Optional. Continuous backup configuration for this cluster.
  final ContinuousBackupConfigResponseAlloydbV1alpha continuousBackupConfig;
  /// Continuous backup properties for this cluster.
  final ContinuousBackupInfoResponseAlloydbV1alpha continuousBackupInfo;
  /// Create time stamp
  final String createTime;
  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final String databaseVersion;
  /// Delete time stamp
  final String deleteTime;
  /// User-settable and human-readable display name for the Cluster.
  final String displayName;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponseAlloydbV1alpha encryptionConfig;
  /// The encryption information for the cluster.
  final EncryptionInfoResponseAlloydbV1alpha encryptionInfo;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final String etag;
  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  final UserPasswordResponseAlloydbV1alpha initialUser;
  /// Labels as key value pairs
  final Map<String, String> labels;
  /// Cluster created via DMS migration.
  final MigrationSourceResponseAlloydbV1alpha migrationSource;
  /// The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id} where the cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For more details see https://google.aip.dev/122. The prefix of the cluster resource name is the name of the parent resource: * projects/{project}/locations/{region}
  final String name;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  final String network;
  final NetworkConfigResponseAlloydbV1alpha networkConfig;
  /// Cross Region replication config specific to PRIMARY cluster.
  final PrimaryConfigResponseAlloydbV1alpha primaryConfig;
  /// Optional. The configuration for Private Service Connect (PSC) for the cluster.
  final PscConfigResponse pscConfig;
  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool reconciling;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// Cross Region replication config specific to SECONDARY cluster.
  final SecondaryConfigResponseAlloydbV1alpha secondaryConfig;
  /// SSL configuration for this AlloyDB cluster.
  final SslConfigResponseAlloydbV1alpha sslConfig;
  /// The current serving state of the cluster.
  final String state;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String uid;
  /// Update time stamp
  final String updateTime;

  /// Creates a new [GetClusterAlloydbV1alphaResult].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [automatedBackupPolicy] The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  /// [backupSource] Cluster created from backup.
  /// [clusterType] The type of the cluster. This is an output-only field and it's populated at the Cluster creation time or the Cluster promotion time. The cluster type is determined by which RPC was used to create the cluster (i.e. `CreateCluster` vs. `CreateSecondaryCluster`
  /// [continuousBackupConfig] Optional. Continuous backup configuration for this cluster.
  /// [continuousBackupInfo] Continuous backup properties for this cluster.
  /// [createTime] Create time stamp
  /// [databaseVersion] Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  /// [deleteTime] Delete time stamp
  /// [displayName] User-settable and human-readable display name for the Cluster.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  /// [encryptionInfo] The encryption information for the cluster.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [initialUser] Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  /// [labels] Labels as key value pairs
  /// [migrationSource] Cluster created via DMS migration.
  /// [name] The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id} where the cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For more details see https://google.aip.dev/122. The prefix of the cluster resource name is the name of the parent resource: * projects/{project}/locations/{region}
  /// [network] The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  /// [networkConfig] Required.
  /// [primaryConfig] Cross Region replication config specific to PRIMARY cluster.
  /// [pscConfig] Optional. The configuration for Private Service Connect (PSC) for the cluster.
  /// [reconciling] Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  /// [satisfiesPzs] Reserved for future use.
  /// [secondaryConfig] Cross Region replication config specific to SECONDARY cluster.
  /// [sslConfig] SSL configuration for this AlloyDB cluster.
  /// [state] The current serving state of the cluster.
  /// [uid] The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  /// [updateTime] Update time stamp
  GetClusterAlloydbV1alphaResult({
    required this.annotations,
    required this.automatedBackupPolicy,
    required this.backupSource,
    required this.clusterType,
    required this.continuousBackupConfig,
    required this.continuousBackupInfo,
    required this.createTime,
    required this.databaseVersion,
    required this.deleteTime,
    required this.displayName,
    required this.encryptionConfig,
    required this.encryptionInfo,
    required this.etag,
    required this.initialUser,
    required this.labels,
    required this.migrationSource,
    required this.name,
    required this.network,
    required this.networkConfig,
    required this.primaryConfig,
    required this.pscConfig,
    required this.reconciling,
    required this.satisfiesPzs,
    required this.secondaryConfig,
    required this.sslConfig,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'automatedBackupPolicy': automatedBackupPolicy.toMap(),
      'backupSource': backupSource.toMap(),
      'clusterType': clusterType,
      'continuousBackupConfig': continuousBackupConfig.toMap(),
      'continuousBackupInfo': continuousBackupInfo.toMap(),
      'createTime': createTime,
      'databaseVersion': databaseVersion,
      'deleteTime': deleteTime,
      'displayName': displayName,
      'encryptionConfig': encryptionConfig.toMap(),
      'encryptionInfo': encryptionInfo.toMap(),
      'etag': etag,
      'initialUser': initialUser.toMap(),
      'labels': labels,
      'migrationSource': migrationSource.toMap(),
      'name': name,
      'network': network,
      'networkConfig': networkConfig.toMap(),
      'primaryConfig': primaryConfig.toMap(),
      'pscConfig': pscConfig.toMap(),
      'reconciling': reconciling,
      'satisfiesPzs': satisfiesPzs,
      'secondaryConfig': secondaryConfig.toMap(),
      'sslConfig': sslConfig.toMap(),
      'state': state,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetClusterAlloydbV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetClusterAlloydbV1alphaResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      automatedBackupPolicy: AutomatedBackupPolicyResponseAlloydbV1alpha.fromMap((map['automatedBackupPolicy']! as Map).cast<String, dynamic>()),
      backupSource: BackupSourceResponseAlloydbV1alpha.fromMap((map['backupSource']! as Map).cast<String, dynamic>()),
      clusterType: map['clusterType'] as String,
      continuousBackupConfig: ContinuousBackupConfigResponseAlloydbV1alpha.fromMap((map['continuousBackupConfig']! as Map).cast<String, dynamic>()),
      continuousBackupInfo: ContinuousBackupInfoResponseAlloydbV1alpha.fromMap((map['continuousBackupInfo']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      databaseVersion: map['databaseVersion'] as String,
      deleteTime: map['deleteTime'] as String,
      displayName: map['displayName'] as String,
      encryptionConfig: EncryptionConfigResponseAlloydbV1alpha.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>()),
      encryptionInfo: EncryptionInfoResponseAlloydbV1alpha.fromMap((map['encryptionInfo']! as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      initialUser: UserPasswordResponseAlloydbV1alpha.fromMap((map['initialUser']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      migrationSource: MigrationSourceResponseAlloydbV1alpha.fromMap((map['migrationSource']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: map['network'] as String,
      networkConfig: NetworkConfigResponseAlloydbV1alpha.fromMap((map['networkConfig']! as Map).cast<String, dynamic>()),
      primaryConfig: PrimaryConfigResponseAlloydbV1alpha.fromMap((map['primaryConfig']! as Map).cast<String, dynamic>()),
      pscConfig: PscConfigResponse.fromMap((map['pscConfig']! as Map).cast<String, dynamic>()),
      reconciling: map['reconciling'] as bool,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      secondaryConfig: SecondaryConfigResponseAlloydbV1alpha.fromMap((map['secondaryConfig']! as Map).cast<String, dynamic>()),
      sslConfig: SslConfigResponseAlloydbV1alpha.fromMap((map['sslConfig']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

