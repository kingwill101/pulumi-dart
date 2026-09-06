// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloudwatch to kinesis connection configuration
class DefenderForContainersAwsOfferingCloudWatchToKinesisResponse {
  /// The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  final pulumi.Input<String?>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingCloudWatchToKinesisResponse].
  /// [cloudRoleArn] The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  const DefenderForContainersAwsOfferingCloudWatchToKinesisResponse({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingCloudWatchToKinesisResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingCloudWatchToKinesisResponse(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
