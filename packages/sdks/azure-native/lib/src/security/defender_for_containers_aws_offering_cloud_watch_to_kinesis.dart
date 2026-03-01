// ignore_for_file: unused_element, unnecessary_cast


/// The cloudwatch to kinesis connection configuration
class DefenderForContainersAwsOfferingCloudWatchToKinesis {
  /// The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  final String? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingCloudWatchToKinesis].
  /// [cloudRoleArn] The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  DefenderForContainersAwsOfferingCloudWatchToKinesis({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingCloudWatchToKinesis.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingCloudWatchToKinesis(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

