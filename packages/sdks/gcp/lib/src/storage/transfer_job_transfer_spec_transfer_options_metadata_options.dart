// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecTransferOptionsMetadataOptions {
  /// Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets.
  final pulumi.Input<String>? acl;
  /// Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer.
  final pulumi.Input<String>? gid;
  /// Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets.
  final pulumi.Input<String>? kmsKey;
  /// Specifies how each file's mode attribute should be handled by the transfer.
  final pulumi.Input<String>? mode;
  /// Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets.
  final pulumi.Input<String>? storageClass;
  /// Specifies how symlinks should be handled by the transfer.
  final pulumi.Input<String>? symlink;
  /// Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets.
  final pulumi.Input<String>? temporaryHold;
  /// Specifies how each object's timeCreated metadata is preserved for transfers.
  final pulumi.Input<String>? timeCreated;
  /// Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer.
  final pulumi.Input<String>? uid;

  /// Creates a new [TransferJobTransferSpecTransferOptionsMetadataOptions].
  /// [acl] Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets.
  /// [gid] Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer.
  /// [kmsKey] Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets.
  /// [mode] Specifies how each file's mode attribute should be handled by the transfer.
  /// [storageClass] Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets.
  /// [symlink] Specifies how symlinks should be handled by the transfer.
  /// [temporaryHold] Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets.
  /// [timeCreated] Specifies how each object's timeCreated metadata is preserved for transfers.
  /// [uid] Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer.
  TransferJobTransferSpecTransferOptionsMetadataOptions({
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
      'acl': ?acl,
      'gid': ?gid,
      'kmsKey': ?kmsKey,
      'mode': ?mode,
      'storageClass': ?storageClass,
      'symlink': ?symlink,
      'temporaryHold': ?temporaryHold,
      'timeCreated': ?timeCreated,
      'uid': ?uid,
    };
  }

  factory TransferJobTransferSpecTransferOptionsMetadataOptions.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecTransferOptionsMetadataOptions(
      acl: map['acl'] == null ? null : (map['acl']! as String).input(),
      gid: map['gid'] == null ? null : (map['gid']! as String).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      storageClass: map['storageClass'] == null ? null : (map['storageClass']! as String).input(),
      symlink: map['symlink'] == null ? null : (map['symlink']! as String).input(),
      temporaryHold: map['temporaryHold'] == null ? null : (map['temporaryHold']! as String).input(),
      timeCreated: map['timeCreated'] == null ? null : (map['timeCreated']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

