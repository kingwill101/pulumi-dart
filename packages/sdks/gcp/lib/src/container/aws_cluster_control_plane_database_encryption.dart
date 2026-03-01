// ignore_for_file: unused_element, unnecessary_cast


class AwsClusterControlPlaneDatabaseEncryption {
  /// The ARN of the AWS KMS key used to encrypt cluster secrets.
  final String kmsKeyArn;

  /// Creates a new [AwsClusterControlPlaneDatabaseEncryption].
  /// [kmsKeyArn] The ARN of the AWS KMS key used to encrypt cluster secrets.
  AwsClusterControlPlaneDatabaseEncryption({
    required this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
    };
  }

  factory AwsClusterControlPlaneDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return AwsClusterControlPlaneDatabaseEncryption(
      kmsKeyArn: map['kmsKeyArn'] as String,
    );
  }
}

