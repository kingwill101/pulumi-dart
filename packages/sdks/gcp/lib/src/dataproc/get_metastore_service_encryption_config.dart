// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetastoreServiceEncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  /// Use the following format: 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)'
  final pulumi.Input<String> kmsKey;

  /// Creates a new [GetMetastoreServiceEncryptionConfig].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  const GetMetastoreServiceEncryptionConfig({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory GetMetastoreServiceEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceEncryptionConfig(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}
