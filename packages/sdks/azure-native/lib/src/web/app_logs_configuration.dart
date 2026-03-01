// ignore_for_file: unused_element, unnecessary_cast

import 'log_analytics_configuration.dart';

class AppLogsConfiguration {
  final String? destination;
  final LogAnalyticsConfiguration? logAnalyticsConfiguration;

  /// Creates a new [AppLogsConfiguration].
  /// [destination] Optional.
  /// [logAnalyticsConfiguration] Optional.
  AppLogsConfiguration({
    this.destination,
    this.logAnalyticsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'logAnalyticsConfiguration': ?logAnalyticsConfiguration == null ? null : logAnalyticsConfiguration!.toMap(),
    };
  }

  factory AppLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return AppLogsConfiguration(
      destination: map['destination'] == null ? null : map['destination'] as String,
      logAnalyticsConfiguration: map['logAnalyticsConfiguration'] == null ? null : LogAnalyticsConfiguration.fromMap((map['logAnalyticsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

