// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsEuSovereignIntegrationsXRay {
  /// Specify each AWS region that includes the resources that you want to monitor
  final pulumi.Input<List<String>>? awsRegions;
  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [AwsEuSovereignIntegrationsXRay].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [metricsPollingInterval] The data polling interval in seconds
  AwsEuSovereignIntegrationsXRay({
    this.awsRegions,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsEuSovereignIntegrationsXRay.fromMap(Map<String, dynamic> map) {
    return AwsEuSovereignIntegrationsXRay(
      awsRegions: map['awsRegions'] == null ? null : ((map['awsRegions']! as List).cast<String>()).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval']! as int).input(),
    );
  }
}

