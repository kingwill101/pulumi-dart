// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsTrustedAdvisor {
  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsTrustedAdvisor].
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsTrustedAdvisor({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory AwsIntegrationsTrustedAdvisor.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsTrustedAdvisor(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
