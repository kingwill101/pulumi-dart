// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response_alloydb_v1alpha.dart';
import 'encryption_info_response_alloydb_v1alpha.dart';
import 'quantity_based_expiry_response_alloydb_v1alpha.dart';

/// Result data returned by getBackup.
class GetBackupAlloydbV1alphaResult {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Map<String, String>? annotations;
  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{region}/clusters/{cluster_id}).
  final String? clusterName;
  /// The system-generated UID of the cluster which was used to create this resource.
  final String? clusterUid;
  /// Create time stamp
  final String? createTime;
  /// The database engine major version of the cluster this backup was created from. Any restored cluster created from this backup will have the same database version.
  final String? databaseVersion;
  /// Delete time stamp
  final String? deleteTime;
  /// User-provided description of the backup.
  final String? description;
  /// User-settable and human-readable display name for the Backup.
  final String? displayName;
  /// Optional. The encryption config can be specified to encrypt the backup with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponseAlloydbV1alpha? encryptionConfig;
  /// The encryption information for the backup.
  final EncryptionInfoResponseAlloydbV1alpha? encryptionInfo;
  /// For Resource freshness validation (https://google.aip.dev/154)
  final String? etag;
  /// The QuantityBasedExpiry of the backup, specified by the backup's retention policy. Once the expiry quantity is over retention, the backup is eligible to be garbage collected.
  final QuantityBasedExpiryResponseAlloydbV1alpha? expiryQuantity;
  /// The time at which after the backup is eligible to be garbage collected. It is the duration specified by the backup's retention policy, added to the backup's create_time.
  final String? expiryTime;
  /// Labels as key value pairs
  final Map<String, String>? labels;
  /// The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup_id} where the cluster and backup ID segments should satisfy the regex expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`, e.g. 1-63 characters of lowercase letters, numbers, and dashes, starting with a letter, and ending with a letter or number. For more details see https://google.aip.dev/122. The prefix of the backup resource name is the name of the parent resource: * projects/{project}/locations/{region}
  final String? name;
  /// Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the service is actively updating the resource. This can happen due to user-triggered updates or system actions like failover or maintenance.
  final bool? reconciling;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// The size of the backup in bytes.
  final String? sizeBytes;
  /// The current state of the backup.
  final String? state;
  /// The backup type, which suggests the trigger for the backup.
  final String? type;
  /// The system-generated UID of the resource. The UID is assigned when the resource is created, and it is retained until it is deleted.
  final String? uid;
  /// Update time stamp
  final String? updateTime;

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
  const GetBackupAlloydbV1alphaResult({
    this.annotations,
    this.clusterName,
    this.clusterUid,
    this.createTime,
    this.databaseVersion,
    this.deleteTime,
    this.description,
    this.displayName,
    this.encryptionConfig,
    this.encryptionInfo,
    this.etag,
    this.expiryQuantity,
    this.expiryTime,
    this.labels,
    this.name,
    this.reconciling,
    this.satisfiesPzs,
    this.sizeBytes,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'clusterName': ?clusterName,
      'clusterUid': ?clusterUid,
      'createTime': ?createTime,
      'databaseVersion': ?databaseVersion,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'encryptionConfig': ?encryptionConfig?.toMap(),
      'encryptionInfo': ?encryptionInfo?.toMap(),
      'etag': ?etag,
      'expiryQuantity': ?expiryQuantity?.toMap(),
      'expiryTime': ?expiryTime,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'satisfiesPzs': ?satisfiesPzs,
      'sizeBytes': ?sizeBytes,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetBackupAlloydbV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetBackupAlloydbV1alphaResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterUid: (() { final guardedValue = map['clusterUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return EncryptionConfigResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      encryptionInfo: (() { final guardedValue = map['encryptionInfo']; if (guardedValue == null) return null; return EncryptionInfoResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryQuantity: (() { final guardedValue = map['expiryQuantity']; if (guardedValue == null) return null; return QuantityBasedExpiryResponseAlloydbV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
