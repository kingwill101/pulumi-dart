// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsEuSovereignIntegrationsBilling {
  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [AwsEuSovereignIntegrationsBilling].
  /// [metricsPollingInterval] The data polling interval in seconds
  AwsEuSovereignIntegrationsBilling({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory AwsEuSovereignIntegrationsBilling.fromMap(Map<String, dynamic> map) {
    return AwsEuSovereignIntegrationsBilling(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
