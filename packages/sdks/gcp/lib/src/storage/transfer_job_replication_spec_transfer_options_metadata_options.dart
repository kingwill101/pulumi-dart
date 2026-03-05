// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobReplicationSpecTransferOptionsMetadataOptions {
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

  /// Creates a new [TransferJobReplicationSpecTransferOptionsMetadataOptions].
  /// [acl] Specifies how each object's ACLs should be preserved for transfers between Google Cloud Storage buckets.
  /// [gid] Specifies how each file's POSIX group ID (GID) attribute should be handled by the transfer.
  /// [kmsKey] Specifies how each object's Cloud KMS customer-managed encryption key (CMEK) is preserved for transfers between Google Cloud Storage buckets.
  /// [mode] Specifies how each file's mode attribute should be handled by the transfer.
  /// [storageClass] Specifies the storage class to set on objects being transferred to Google Cloud Storage buckets.
  /// [symlink] Specifies how symlinks should be handled by the transfer.
  /// [temporaryHold] Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets.
  /// [timeCreated] Specifies how each object's timeCreated metadata is preserved for transfers.
  /// [uid] Specifies how each file's POSIX user ID (UID) attribute should be handled by the transfer.
  TransferJobReplicationSpecTransferOptionsMetadataOptions({
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

  factory TransferJobReplicationSpecTransferOptionsMetadataOptions.fromMap(Map<String, dynamic> map) {
    return TransferJobReplicationSpecTransferOptionsMetadataOptions(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gid: (() { final guardedValue = map['gid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symlink: (() { final guardedValue = map['symlink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      temporaryHold: (() { final guardedValue = map['temporaryHold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

