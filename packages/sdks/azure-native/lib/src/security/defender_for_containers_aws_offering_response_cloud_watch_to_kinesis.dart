// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloudwatch to kinesis connection configuration
class DefenderForContainersAwsOfferingResponseCloudWatchToKinesis {
  /// The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingResponseCloudWatchToKinesis].
  /// [cloudRoleArn] The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  DefenderForContainersAwsOfferingResponseCloudWatchToKinesis({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingResponseCloudWatchToKinesis.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseCloudWatchToKinesis(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

