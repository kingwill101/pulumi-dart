// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolConfigConfigEncryption {
  /// The ARN of the AWS KMS key used to encrypt node pool configuration.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [AwsNodePoolConfigConfigEncryption].
  /// [kmsKeyArn] The ARN of the AWS KMS key used to encrypt node pool configuration.
  AwsNodePoolConfigConfigEncryption({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory AwsNodePoolConfigConfigEncryption.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigConfigEncryption(
      kmsKeyArn: (map['kmsKeyArn'] as String).input(),
    );
  }
}

