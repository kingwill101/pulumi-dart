// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final pulumi.Input<String>? kmsKeySelfLink;

  /// The service account being used for the
  /// encryption request for the given KMS key. If absent, the Compute Engine
  /// default service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;

  /// Creates a new [InstanceTemplateDiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS
  /// [kmsKeyServiceAccount] The service account being used for the
  InstanceTemplateDiskDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
    };
  }

  factory InstanceTemplateDiskDiskEncryptionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: (() {
        final guardedValue = map['kmsKeySelfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyServiceAccount: (() {
        final guardedValue = map['kmsKeyServiceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
