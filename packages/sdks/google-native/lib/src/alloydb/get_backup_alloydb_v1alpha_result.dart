// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response_alloydb_v1alpha.dart';
import 'encryption_info_response_alloydb_v1alpha.dart';
import 'quantity_based_expiry_response_alloydb_v1alpha.dart';

/// Result data returned by getBackup.
class GetBackupAlloydbV1alphaResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String> annotations;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  final String clusterName;

  /// The system-generated UID of the cluster which was used to create this resource.
  final String clusterUid;

  /// Create time stamp
  final String createTime;

  /// The database engine major version of the cluster this backup was created from. Any restored cluster created from this backup will have the same database version.
  final String databaseVersion;

  /// Delete time stamp
  final String deleteTime;

  /// User-provided description of the backup.
  final String description;

  /// User-settable and human-readable display name for the Backup.
  final String displayName;

  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponseAlloydbV1alpha encryptionConfig;

  /// The encryption information for the backup.
  final EncryptionInfoResponseAlloydbV1alpha encryptionInfo;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final String etag;

  /// The QuantityBasedExpiry of the backup, specified by the backup's retention policy. Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  final QuantityBasedExpiryResponseAlloydbV1alpha expiryQuantity;

  /// The time at which after the backup is eligible to be garbage collected. It is the duration specified by the backup's retention policy, added to the backup's create_time.
  final String expiryTime;

  /// Labels as key value pairs
  final Map<String, String> labels;

  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id} where the cluster and backup ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the backup resource name is the name of the parent resource: * projects/{project}/locations/{region}
  final String name;

  /// Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool reconciling;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// The size of the backup in bytes.
  final String sizeBytes;

  /// The current state of the backup.
  final String state;

  /// The backup type, which suggests the trigger for the backup.
  final String type;

  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String uid;

  /// Update time stamp
  final String updateTime;

  /// Creates a new [GetBackupAlloydbV1alphaResult].
  /// [annotations] Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// [clusterName] The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  /// [clusterUid] The system-generated UID of the cluster which was used to create this resource.
  /// [createTime] Create time stamp
  /// [databaseVersion] The database engine major version of the cluster this backup was created from. Any restored cluster created from this backup will have the same database version.
  /// [deleteTime] Delete time stamp
  /// [description] User-provided description of the backup.
  /// [displayName] User-settable and human-readable display name for the Backup.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [encryptionInfo] The encryption information for the backup.
  /// [etag] For Resource freshness validation (https://google.aip.dev/154)
  /// [expiryQuantity] The QuantityBasedExpiry of the backup, specified by the backup's retention policy. Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  /// [expiryTime] The time at which after the backup is eligible to be garbage collected. It is the duration specified by the backup's retention policy, added to the backup's create_time.
  /// [labels] Labels as key value pairs
  /// [name] The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id} where the cluster and backup ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the backup resource name is the name of the parent resource: * projects/{project}/locations/{region}
  /// [reconciling] Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource. This can happen due to user-triggered updates or system actions like failover or maintenance.
  /// [satisfiesPzs] Reserved for future use.
  /// [sizeBytes] The size of the backup in bytes.
  /// [state] The current state of the backup.
  /// [type] The backup type, which suggests the trigger for the backup.
  /// [uid] The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  /// [updateTime] Update time stamp
  GetBackupAlloydbV1alphaResult({
    required this.annotations,
    required this.clusterName,
    required this.clusterUid,
    required this.createTime,
    required this.databaseVersion,
    required this.deleteTime,
    required this.description,
    required this.displayName,
    required this.encryptionConfig,
    required this.encryptionInfo,
    required this.etag,
    required this.expiryQuantity,
    required this.expiryTime,
    required this.labels,
    required this.name,
    required this.reconciling,
    required this.satisfiesPzs,
    required this.sizeBytes,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'clusterName': clusterName,
      'clusterUid': clusterUid,
      'createTime': createTime,
      'databaseVersion': databaseVersion,
      'deleteTime': deleteTime,
      'description': description,
      'displayName': displayName,
      'encryptionConfig': encryptionConfig.toMap(),
      'encryptionInfo': encryptionInfo.toMap(),
      'etag': etag,
      'expiryQuantity': expiryQuantity.toMap(),
      'expiryTime': expiryTime,
      'labels': labels,
      'name': name,
      'reconciling': reconciling,
      'satisfiesPzs': satisfiesPzs,
      'sizeBytes': sizeBytes,
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetBackupAlloydbV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetBackupAlloydbV1alphaResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      clusterName: map['clusterName'] as String,
      clusterUid: map['clusterUid'] as String,
      createTime: map['createTime'] as String,
      databaseVersion: map['databaseVersion'] as String,
      deleteTime: map['deleteTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      encryptionConfig: EncryptionConfigResponseAlloydbV1alpha.fromMap(
        (map['encryptionConfig']! as Map).cast<String, dynamic>(),
      ),
      encryptionInfo: EncryptionInfoResponseAlloydbV1alpha.fromMap(
        (map['encryptionInfo']! as Map).cast<String, dynamic>(),
      ),
      etag: map['etag'] as String,
      expiryQuantity: QuantityBasedExpiryResponseAlloydbV1alpha.fromMap(
        (map['expiryQuantity']! as Map).cast<String, dynamic>(),
      ),
      expiryTime: map['expiryTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      reconciling: map['reconciling'] as bool,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      sizeBytes: map['sizeBytes'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
