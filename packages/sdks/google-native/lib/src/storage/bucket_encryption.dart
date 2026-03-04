// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption configuration for a bucket.
class BucketEncryption {
  /// A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  final pulumi.Input<String>? defaultKmsKeyName;

  /// Creates a new [BucketEncryption].
  /// [defaultKmsKeyName] A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  BucketEncryption({this.defaultKmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'defaultKmsKeyName': ?defaultKmsKeyName};
  }

  factory BucketEncryption.fromMap(Map<String, dynamic> map) {
    return BucketEncryption(
      defaultKmsKeyName: (() {
        final guardedValue = map['defaultKmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
