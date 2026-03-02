// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_options_acl.dart';
import 'metadata_options_gid.dart';
import 'metadata_options_kms_key.dart';
import 'metadata_options_mode.dart';
import 'metadata_options_storage_class.dart';
import 'metadata_options_symlink.dart';
import 'metadata_options_temporary_hold.dart';
import 'metadata_options_time_created.dart';
import 'metadata_options_uid.dart';

/// Specifies the metadata options for running a transfer.
class MetadataOptions {
  /// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
  final pulumi.Input<MetadataOptionsAcl>? acl;
  /// Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<MetadataOptionsGid>? gid;
  /// Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.
  final pulumi.Input<MetadataOptionsKmsKey>? kmsKey;
  /// Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<MetadataOptionsMode>? mode;
  /// Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
  final pulumi.Input<MetadataOptionsStorageClass>? storageClass;
  /// Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<MetadataOptionsSymlink>? symlink;
  /// Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.
  final pulumi.Input<MetadataOptionsTemporaryHold>? temporaryHold;
  /// Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
  final pulumi.Input<MetadataOptionsTimeCreated>? timeCreated;
  /// Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  final pulumi.Input<MetadataOptionsUid>? uid;

  /// Creates a new [MetadataOptions].
  /// [acl] Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as ACL_DESTINATION_BUCKET_DEFAULT.
  /// [gid] Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer. By default, GID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  /// [kmsKey] Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as KMS_KEY_DESTINATION_BUCKET_DEFAULT.
  /// [mode] Specifies how each file's mode attribute should be handled by the transfer. By default, mode is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  /// [storageClass] Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets. If unspecified, the default behavior is the same as STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
  /// [symlink] Specifies how symlinks should be handled by the transfer. By default, symlinks are not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  /// [temporaryHold] Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.
  /// [timeCreated] Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
  /// [uid] Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer. By default, UID is not preserved. Only applicable to transfers involving POSIX file systems, and ignored for other transfers.
  MetadataOptions({
    this.acl,
    this.gid,
    this.kmsKey,
    this.mode,
    this.storageClass,
    this.symlink,
    this.temporaryHold,
    this.timeCreated,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsAcl, String>(acl, (value) => value.value),
      'gid': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsGid, String>(gid, (value) => value.value),
      'kmsKey': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsKmsKey, String>(kmsKey, (value) => value.value),
      'mode': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsMode, String>(mode, (value) => value.value),
      'storageClass': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsStorageClass, String>(storageClass, (value) => value.value),
      'symlink': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsSymlink, String>(symlink, (value) => value.value),
      'temporaryHold': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsTemporaryHold, String>(temporaryHold, (value) => value.value),
      'timeCreated': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsTimeCreated, String>(timeCreated, (value) => value.value),
      'uid': ?pulumi.Input.mapOptionalInputValue<MetadataOptionsUid, String>(uid, (value) => value.value),
    };
  }

  factory MetadataOptions.fromMap(Map<String, dynamic> map) {
    return MetadataOptions(
      acl: map['acl'] == null ? null : (MetadataOptionsAcl.fromValue(map['acl'] as String)).input(),
      gid: map['gid'] == null ? null : (MetadataOptionsGid.fromValue(map['gid'] as String)).input(),
      kmsKey: map['kmsKey'] == null ? null : (MetadataOptionsKmsKey.fromValue(map['kmsKey'] as String)).input(),
      mode: map['mode'] == null ? null : (MetadataOptionsMode.fromValue(map['mode'] as String)).input(),
      storageClass: map['storageClass'] == null ? null : (MetadataOptionsStorageClass.fromValue(map['storageClass'] as String)).input(),
      symlink: map['symlink'] == null ? null : (MetadataOptionsSymlink.fromValue(map['symlink'] as String)).input(),
      temporaryHold: map['temporaryHold'] == null ? null : (MetadataOptionsTemporaryHold.fromValue(map['temporaryHold'] as String)).input(),
      timeCreated: map['timeCreated'] == null ? null : (MetadataOptionsTimeCreated.fromValue(map['timeCreated'] as String)).input(),
      uid: map['uid'] == null ? null : (MetadataOptionsUid.fromValue(map['uid'] as String)).input(),
    );
  }
}

