// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterControlPlaneConfigEncryption {
  /// The ARN of the AWS KMS key used to encrypt cluster configuration.
  final pulumi.Input<String> kmsKeyArn;

  /// Creates a new [AwsClusterControlPlaneConfigEncryption].
  /// [kmsKeyArn] The ARN of the AWS KMS key used to encrypt cluster configuration.
  const AwsClusterControlPlaneConfigEncryption({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory AwsClusterControlPlaneConfigEncryption.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneConfigEncryption(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
    );
  }
}
