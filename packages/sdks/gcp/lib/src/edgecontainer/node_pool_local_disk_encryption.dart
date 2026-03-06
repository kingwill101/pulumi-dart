// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolLocalDiskEncryption {
  /// The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
  /// If not specified, a Google-managed key will be used instead.
  final pulumi.Input<String>? kmsKey;
  /// (Output)
  /// The Cloud KMS CryptoKeyVersion currently in use for protecting node local disks. Only applicable if kmsKey is set.
  final pulumi.Input<String>? kmsKeyActiveVersion;
  /// (Output)
  /// Availability of the Cloud KMS CryptoKey. If not KEY_AVAILABLE, then nodes may go offline as they cannot access their local data.
  /// This can be caused by a lack of permissions to use the key, or if the key is disabled or deleted.
  final pulumi.Input<String>? kmsKeyState;

  /// Creates a new [NodePoolLocalDiskEncryption].
  /// [kmsKey] The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
  /// [kmsKeyActiveVersion] (Output)
  /// [kmsKeyState] (Output)
  const NodePoolLocalDiskEncryption({
    this.kmsKey,
    this.kmsKeyActiveVersion,
    this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'kmsKeyActiveVersion': ?kmsKeyActiveVersion,
      'kmsKeyState': ?kmsKeyState,
    };
  }

  factory NodePoolLocalDiskEncryption.fromMap(Map<String, dynamic> map) {
    return NodePoolLocalDiskEncryption(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyActiveVersion: (() { final guardedValue = map['kmsKeyActiveVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyState: (() { final guardedValue = map['kmsKeyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

