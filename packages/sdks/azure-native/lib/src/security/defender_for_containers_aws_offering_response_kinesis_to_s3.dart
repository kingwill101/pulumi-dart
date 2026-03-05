// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The kinesis to s3 connection configuration
class DefenderForContainersAwsOfferingResponseKinesisToS3 {
  /// The cloud role ARN in AWS used by Kinesis to transfer data into S3
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingResponseKinesisToS3].
  /// [cloudRoleArn] The cloud role ARN in AWS used by Kinesis to transfer data into S3
  DefenderForContainersAwsOfferingResponseKinesisToS3({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingResponseKinesisToS3.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseKinesisToS3(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

