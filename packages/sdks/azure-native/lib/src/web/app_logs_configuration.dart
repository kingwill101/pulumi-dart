// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_configuration.dart';

class AppLogsConfiguration {
  final pulumi.Input<String>? destination;
  final pulumi.Input<LogAnalyticsConfiguration>? logAnalyticsConfiguration;

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
      'logAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsConfiguration, Map<String, dynamic>>(logAnalyticsConfiguration, (value) => value.toMap()),
    };
  }

  factory AppLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return AppLogsConfiguration(
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      logAnalyticsConfiguration: map['logAnalyticsConfiguration'] == null ? null : (LogAnalyticsConfiguration.fromMap((map['logAnalyticsConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

