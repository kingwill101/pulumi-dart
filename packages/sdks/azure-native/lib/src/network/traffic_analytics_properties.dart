// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_analytics_configuration_properties.dart';

/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsProperties {
  /// Parameters that define the configuration of traffic analytics.
  final pulumi.Input<TrafficAnalyticsConfigurationProperties>? networkWatcherFlowAnalyticsConfiguration;

  /// Creates a new [TrafficAnalyticsProperties].
  /// [networkWatcherFlowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  TrafficAnalyticsProperties({
    this.networkWatcherFlowAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherFlowAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<TrafficAnalyticsConfigurationProperties, Map<String, dynamic>>(networkWatcherFlowAnalyticsConfiguration, (value) => value.toMap()),
    };
  }

  factory TrafficAnalyticsProperties.fromMap(Map<String, dynamic> map) {
    return TrafficAnalyticsProperties(
      networkWatcherFlowAnalyticsConfiguration: map['networkWatcherFlowAnalyticsConfiguration'] == null ? null : (TrafficAnalyticsConfigurationProperties.fromMap((map['networkWatcherFlowAnalyticsConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

