// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_configuration_response.dart';

class AppLogsConfigurationResponse {
  final pulumi.Input<String>? destination;
  final pulumi.Input<LogAnalyticsConfigurationResponse>? logAnalyticsConfiguration;

  /// Creates a new [AppLogsConfigurationResponse].
  /// [destination] Optional.
  /// [logAnalyticsConfiguration] Optional.
  const AppLogsConfigurationResponse({
    this.destination,
    this.logAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'logAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsConfigurationResponse, Map<String, dynamic>>(logAnalyticsConfiguration, (value) => value.toMap()),
    };
  }

  factory AppLogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AppLogsConfigurationResponse(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsConfiguration: (() { final guardedValue = map['logAnalyticsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogAnalyticsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
