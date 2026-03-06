// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The cloudwatch to kinesis connection configuration
class DefenderForContainersAwsOfferingCloudWatchToKinesis {
  /// The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  final pulumi.Input<String>? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingCloudWatchToKinesis].
  /// [cloudRoleArn] The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  const DefenderForContainersAwsOfferingCloudWatchToKinesis({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingCloudWatchToKinesis.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingCloudWatchToKinesis(
      cloudRoleArn: (() { final guardedValue = map['cloudRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

