// ignore_for_file: unused_element, unnecessary_cast


/// Encryption configuration for a bucket.
class BucketEncryption {
  /// A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  final String? defaultKmsKeyName;

  /// Creates a new [BucketEncryption].
  /// [defaultKmsKeyName] A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.
  BucketEncryption({
    this.defaultKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKmsKeyName': ?defaultKmsKeyName,
    };
  }

  factory BucketEncryption.fromMap(Map<String, dynamic> map) {
    return BucketEncryption(
      defaultKmsKeyName: map['defaultKmsKeyName'] == null ? null : map['defaultKmsKeyName'] as String,
    );
  }
}

