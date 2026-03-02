// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketEncryption {
  /// A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.
  final pulumi.Input<String> defaultKmsKeyName;

  /// Creates a new [GetBucketEncryption].
  /// [defaultKmsKeyName] A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.
  GetBucketEncryption({
    required this.defaultKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKmsKeyName': defaultKmsKeyName,
    };
  }

  factory GetBucketEncryption.fromMap(Map<String, dynamic> map) {
    return GetBucketEncryption(
      defaultKmsKeyName: (map['defaultKmsKeyName'] as String).input(),
    );
  }
}

