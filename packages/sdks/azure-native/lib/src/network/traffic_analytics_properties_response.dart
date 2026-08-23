// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_analytics_configuration_properties_response.dart';

/// Parameters that define the configuration of traffic analytics.
class TrafficAnalyticsPropertiesResponse {
  /// Parameters that define the configuration of traffic analytics.
  final pulumi.Input<TrafficAnalyticsConfigurationPropertiesResponse>? networkWatcherFlowAnalyticsConfiguration;

  /// Creates a new [TrafficAnalyticsPropertiesResponse].
  /// [networkWatcherFlowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  const TrafficAnalyticsPropertiesResponse({
    this.networkWatcherFlowAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherFlowAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<TrafficAnalyticsConfigurationPropertiesResponse, Map<String, dynamic>>(networkWatcherFlowAnalyticsConfiguration, (value) => value.toMap()),
    };
  }

  factory TrafficAnalyticsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TrafficAnalyticsPropertiesResponse(
      networkWatcherFlowAnalyticsConfiguration: (() { final guardedValue = map['networkWatcherFlowAnalyticsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficAnalyticsConfigurationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
