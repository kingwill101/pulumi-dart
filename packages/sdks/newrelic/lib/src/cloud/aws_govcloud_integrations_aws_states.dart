// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsGovcloudIntegrationsAwsStates {
  /// Specify each AWS region that includes the resources that you want to monitor
  final pulumi.Input<List<String>>? awsRegions;
  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [AwsGovcloudIntegrationsAwsStates].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [metricsPollingInterval] The data polling interval in seconds
  const AwsGovcloudIntegrationsAwsStates({
    this.awsRegions,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsGovcloudIntegrationsAwsStates.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsAwsStates(
      awsRegions: (() { final guardedValue = map['awsRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metricsPollingInterval: (() { final guardedValue = map['metricsPollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

