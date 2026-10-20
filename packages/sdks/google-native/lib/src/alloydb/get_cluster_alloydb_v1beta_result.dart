// ignore_for_file: unused_element, unnecessary_cast

import 'automated_backup_policy_response_alloydb_v1beta.dart';
import 'backup_source_response_alloydb_v1beta.dart';
import 'continuous_backup_config_response_alloydb_v1beta.dart';
import 'continuous_backup_info_response_alloydb_v1beta.dart';
import 'encryption_config_response_alloydb_v1beta.dart';
import 'encryption_info_response_alloydb_v1beta.dart';
import 'migration_source_response_alloydb_v1beta.dart';
import 'network_config_response_alloydb_v1beta.dart';
import 'primary_config_response_alloydb_v1beta.dart';
import 'secondary_config_response_alloydb_v1beta.dart';
import 'ssl_config_response_alloydb_v1beta.dart';
import 'user_password_response_alloydb_v1beta.dart';

/// Result data returned by getCluster.
class GetClusterAlloydbV1betaResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String>? annotations;
  /// The automated backup policy for this cluster. If no policy is provided then the default policy will be used. If backups are supported for the cluster, the default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. For more information on the defaults, consult the documentation for the message type.
  final AutomatedBackupPolicyResponseAlloydbV1beta? automatedBackupPolicy;
  /// Cluster created from backup.
  final BackupSourceResponseAlloydbV1beta? backupSource;
  /// The type of the cluster. This is an output-only field and it's populated at the Cluster creation time or the Cluster promotion time. The cluster type is determined by which RPC was used to create the cluster (i.e. `CreateCluster` vs. `CreateSecondaryCluster`
  final String? clusterType;
  /// Optional. Continuous backup configuration for this cluster.
  final ContinuousBackupConfigResponseAlloydbV1beta? continuousBackupConfig;
  /// Continuous backup properties for this cluster.
  final ContinuousBackupInfoResponseAlloydbV1beta? continuousBackupInfo;
  /// Create time stamp
  final String? createTime;
  /// Optional. The database engine major version. This is an optional field and it is populated at the Cluster creation time. If a database version is not supplied at cluster creation time, then a default database version will be used.
  final String? databaseVersion;
  /// Delete time stamp
  final String? deleteTime;
  /// User-settable and human-readable display name for the Cluster.
  final String? displayName;
  /// Optional. The encryption config can be specified to encrypt the data disks and other persistent data resources of a cluster with a customer-managed encryption key (CMEK). When this field is not specified, the cluster will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponseAlloydbV1beta? encryptionConfig;
  /// The encryption information for the cluster.
  final EncryptionInfoResponseAlloydbV1beta? encryptionInfo;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final String? etag;
  /// Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` this is ignored.
  final UserPasswordResponseAlloydbV1beta? initialUser;
  /// Labels as key value pairs
  final Map<String, String>? labels;
  /// Cluster created via DMS migration.
  final MigrationSourceResponseAlloydbV1beta? migrationSource;
  /// The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{cluster_id} where the cluster ID segment should satisfy the regex expression `[a-z0-9-]+`. For more details see https://google.aip.dev/122. The prefix of the cluster resource name is the name of the parent resource: * projects/{project}/locations/{region}
  final String? name;
  /// The resource link for the VPC network in which cluster resources are created and from which they are accessible via Private IP. The network must belong to the same project as the cluster. It is specified in the form: "projects/{project}/global/networks/{network_id}". This is required to create a cluster. Deprecated, use network_config.network instead.
  final String? network;
  final NetworkConfigResponseAlloydbV1beta? networkConfig;
  /// Cross Region replication config specific to PRIMARY cluster.
  final PrimaryConfigResponseAlloydbV1beta? primaryConfig;
  /// Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool? reconciling;
  /// Cross Region replication config specific to SECONDARY cluster.
  final SecondaryConfigResponseAlloydbV1beta? secondaryConfig;
  /// SSL configuration for this AlloyDB cluster.
  final SslConfigResponseAlloydbV1beta? sslConfig;
  /// The current serving state of the cluster.
  final String? state;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String? uid;
  /// Update time stamp
  final String? updateTime;

  /// Creates a new [GetClusterAlloydbV1betaResult].
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
  /// [networkConfig] Optional.
  /// [primaryConfig] Cross Region replication config specific to PRIMARY cluster.
  /// [reconciling] Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them. This can happen due to user-triggered updates or system actions like failover or maintenance.
  /// [secondaryConfig] Cross Region replication config specific to SECONDARY cluster.
  /// [sslConfig] SSL configuration for this AlloyDB cluster.
  /// [state] The current serving state of the cluster.
  /// [uid] The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  /// [updateTime] Update time stamp
  const GetClusterAlloydbV1betaResult({
    this.annotations,
    this.automatedBackupPolicy,
    this.backupSource,
    this.clusterType,
    this.continuousBackupConfig,
    this.continuousBackupInfo,
    this.createTime,
    this.databaseVersion,
    this.deleteTime,
    this.displayName,
    this.encryptionConfig,
    this.encryptionInfo,
    this.etag,
    this.initialUser,
    this.labels,
    this.migrationSource,
    this.name,
    this.network,
    this.networkConfig,
    this.primaryConfig,
    this.reconciling,
    this.secondaryConfig,
    this.sslConfig,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'automatedBackupPolicy': ?automatedBackupPolicy?.toMap(),
      'backupSource': ?backupSource?.toMap(),
      'clusterType': ?clusterType,
      'continuousBackupConfig': ?continuousBackupConfig?.toMap(),
      'continuousBackupInfo': ?continuousBackupInfo?.toMap(),
      'createTime': ?createTime,
      'databaseVersion': ?databaseVersion,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'encryptionConfig': ?encryptionConfig?.toMap(),
      'encryptionInfo': ?encryptionInfo?.toMap(),
      'etag': ?etag,
      'initialUser': ?initialUser?.toMap(),
      'labels': ?labels,
      'migrationSource': ?migrationSource?.toMap(),
      'name': ?name,
      'network': ?network,
      'networkConfig': ?networkConfig?.toMap(),
      'primaryConfig': ?primaryConfig?.toMap(),
      'reconciling': ?reconciling,
      'secondaryConfig': ?secondaryConfig?.toMap(),
      'sslConfig': ?sslConfig?.toMap(),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetClusterAlloydbV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetClusterAlloydbV1betaResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      automatedBackupPolicy: (() { final guardedValue = map['automatedBackupPolicy']; if (guardedValue == null) return null; return AutomatedBackupPolicyResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      backupSource: (() { final guardedValue = map['backupSource']; if (guardedValue == null) return null; return BackupSourceResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      continuousBackupConfig: (() { final guardedValue = map['continuousBackupConfig']; if (guardedValue == null) return null; return ContinuousBackupConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      continuousBackupInfo: (() { final guardedValue = map['continuousBackupInfo']; if (guardedValue == null) return null; return ContinuousBackupInfoResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return EncryptionConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionInfo: (() { final guardedValue = map['encryptionInfo']; if (guardedValue == null) return null; return EncryptionInfoResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      initialUser: (() { final guardedValue = map['initialUser']; if (guardedValue == null) return null; return UserPasswordResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      migrationSource: (() { final guardedValue = map['migrationSource']; if (guardedValue == null) return null; return MigrationSourceResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return NetworkConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      primaryConfig: (() { final guardedValue = map['primaryConfig']; if (guardedValue == null) return null; return PrimaryConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      secondaryConfig: (() { final guardedValue = map['secondaryConfig']; if (guardedValue == null) return null; return SecondaryConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return SslConfigResponseAlloydbV1beta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
