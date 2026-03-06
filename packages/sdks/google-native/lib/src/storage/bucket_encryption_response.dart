// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption configuration for a bucket.
class BucketEncryptionResponse {
  /// A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  final pulumi.Input<String> defaultKmsKeyName;

  /// Creates a new [BucketEncryptionResponse].
  /// [defaultKmsKeyName] A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  const BucketEncryptionResponse({
    required this.defaultKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKmsKeyName': defaultKmsKeyName,
    };
  }

  factory BucketEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return BucketEncryptionResponse(
      defaultKmsKeyName: pulumi.Input.fromValue(map['defaultKmsKeyName'] as String),
    );
  }
}

