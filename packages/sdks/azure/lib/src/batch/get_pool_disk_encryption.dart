// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolDiskEncryption {
  /// On Linux pool, only `TemporaryDisk` is supported; on Windows pool, `OsDisk` and `TemporaryDisk` must be specified.
  final pulumi.Input<String> diskEncryptionTarget;

  /// Creates a new [GetPoolDiskEncryption].
  /// [diskEncryptionTarget] On Linux pool, only `TemporaryDisk` is supported; on Windows pool, `OsDisk` and `TemporaryDisk` must be specified.
  GetPoolDiskEncryption({
    required this.diskEncryptionTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionTarget': diskEncryptionTarget,
    };
  }

  factory GetPoolDiskEncryption.fromMap(Map<String, dynamic> map) {
    return GetPoolDiskEncryption(
      diskEncryptionTarget: (map['diskEncryptionTarget'] as String).input(),
    );
  }
}

