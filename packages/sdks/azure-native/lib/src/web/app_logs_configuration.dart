// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_configuration.dart';

class AppLogsConfiguration {
  final pulumi.Input<String>? destination;
  final pulumi.Input<LogAnalyticsConfiguration>? logAnalyticsConfiguration;

  /// Creates a new [AppLogsConfiguration].
  /// [destination] Optional.
  /// [logAnalyticsConfiguration] Optional.
  const AppLogsConfiguration({
    this.destination,
    this.logAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'logAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsConfiguration, Map<String, dynamic>>(logAnalyticsConfiguration, (value) => value.toMap()),
    };
  }

  factory AppLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return AppLogsConfiguration(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsConfiguration: (() { final guardedValue = map['logAnalyticsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogAnalyticsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
