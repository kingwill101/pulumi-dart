// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_control_plane_encryption_kms_status.dart';

class ClusterControlPlaneEncryption {
  /// The Cloud KMS CryptoKey e.g.
  /// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
  /// to use for protecting control plane disks. If not specified, a
  /// Google-managed key will be used instead.
  final pulumi.Input<String>? kmsKey;
  /// (Output)
  /// The Cloud KMS CryptoKeyVersion currently in use for protecting control
  /// plane disks. Only applicable if kms_key is set.
  final pulumi.Input<String>? kmsKeyActiveVersion;
  /// (Output)
  /// Availability of the Cloud KMS CryptoKey. If not `KEY_AVAILABLE`, then
  /// nodes may go offline as they cannot access their local data. This can be
  /// caused by a lack of permissions to use the key, or if the key is disabled
  /// or deleted.
  final pulumi.Input<String>? kmsKeyState;
  /// (Output)
  /// Error status returned by Cloud KMS when using this key. This field may be
  /// populated only if `kms_key_state` is not `KMS_KEY_STATE_KEY_AVAILABLE`.
  /// If populated, this field contains the error status reported by Cloud KMS.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_control_plane_encryption_kms_status"&gt;&lt;/a&gt;The `kms_status` block contains:
  final pulumi.Input<List<ClusterControlPlaneEncryptionKmsStatus>>? kmsStatuses;

  /// Creates a new [ClusterControlPlaneEncryption].
  /// [kmsKey] The Cloud KMS CryptoKey e.g.
  /// [kmsKeyActiveVersion] (Output)
  /// [kmsKeyState] (Output)
  /// [kmsStatuses] (Output)
  const ClusterControlPlaneEncryption({
    this.kmsKey,
    this.kmsKeyActiveVersion,
    this.kmsKeyState,
    this.kmsStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'kmsKeyActiveVersion': ?kmsKeyActiveVersion,
      'kmsKeyState': ?kmsKeyState,
      'kmsStatuses': ?pulumi.Input.mapOptionalInputValue<List<ClusterControlPlaneEncryptionKmsStatus>, List<Map<String, dynamic>>>(kmsStatuses, (value) => pulumi.Input.encodeList<ClusterControlPlaneEncryptionKmsStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterControlPlaneEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEncryption(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyActiveVersion: (() { final guardedValue = map['kmsKeyActiveVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyState: (() { final guardedValue = map['kmsKeyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsStatuses: (() { final guardedValue = map['kmsStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterControlPlaneEncryptionKmsStatus>(guardedValue, (value) => ClusterControlPlaneEncryptionKmsStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

