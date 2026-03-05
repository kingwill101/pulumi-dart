// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the metadata options for running a transfer.
class MetadataOptionsResponse {
  /// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
  final pulumi.Input<String> acl;
  /// Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<String> gid;
  /// Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.
  final pulumi.Input<String> kmsKey;
  /// Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<String> mode;
  /// Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
  final pulumi.Input<String> storageClass;
  /// Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<String> symlink;
  /// Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.
  final pulumi.Input<String> temporaryHold;
  /// Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
  final pulumi.Input<String> timeCreated;
  /// Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<String> uid;

  /// Creates a new [MetadataOptionsResponse].
  /// [acl] Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
  /// [gid] Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  /// [kmsKey] Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.
  /// [mode] Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  /// [storageClass] Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
  /// [symlink] Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  /// [temporaryHold] Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.
  /// [timeCreated] Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
  /// [uid] Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  MetadataOptionsResponse({
    required this.acl,
    required this.gid,
    required this.kmsKey,
    required this.mode,
    required this.storageClass,
    required this.symlink,
    required this.temporaryHold,
    required this.timeCreated,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': acl,
      'gid': gid,
      'kmsKey': kmsKey,
      'mode': mode,
      'storageClass': storageClass,
      'symlink': symlink,
      'temporaryHold': temporaryHold,
      'timeCreated': timeCreated,
      'uid': uid,
    };
  }

  factory MetadataOptionsResponse.fromMap(Map<String, dynamic> map) {
    return MetadataOptionsResponse(
      acl: pulumi.Input.fromValue(map['acl'] as String),
      gid: pulumi.Input.fromValue(map['gid'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      storageClass: pulumi.Input.fromValue(map['storageClass'] as String),
      symlink: pulumi.Input.fromValue(map['symlink'] as String),
      temporaryHold: pulumi.Input.fromValue(map['temporaryHold'] as String),
      timeCreated: pulumi.Input.fromValue(map['timeCreated'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

