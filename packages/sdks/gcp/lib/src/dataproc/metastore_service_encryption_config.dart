// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreServiceEncryptionConfig {
  /// The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  /// Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  final pulumi.Input<String> kmsKey;

  /// Creates a new [MetastoreServiceEncryptionConfig].
  /// [kmsKey] The fully qualified customer provided Cloud KMS key name to use for customer data encryption.
  const MetastoreServiceEncryptionConfig({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory MetastoreServiceEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceEncryptionConfig(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}
