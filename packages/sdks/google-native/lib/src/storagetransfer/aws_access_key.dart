// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AWS access key (see [AWS Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)). For information on our data retention policy for user credentials, see [User credentials](/storage-transfer/docs/data-retention#user-credentials).
class AwsAccessKey {
  /// AWS access key ID.
  final pulumi.Input<String> accessKeyId;
  /// AWS secret access key. This field is not returned in RPC responses.
  final pulumi.Input<String> secretAccessKey;

  /// Creates a new [AwsAccessKey].
  /// [accessKeyId] AWS access key ID.
  /// [secretAccessKey] AWS secret access key. This field is not returned in RPC responses.
  AwsAccessKey({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'secretAccessKey': secretAccessKey,
    };
  }

  factory AwsAccessKey.fromMap(Map<String, dynamic> map) {
    return AwsAccessKey(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      secretAccessKey: pulumi.Input.fromValue(map['secretAccessKey'] as String),
    );
  }
}

