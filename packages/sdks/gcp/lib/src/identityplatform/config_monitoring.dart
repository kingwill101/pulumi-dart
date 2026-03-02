// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_monitoring_request_logging.dart';

class ConfigMonitoring {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  /// Structure is documented below.
  final pulumi.Input<ConfigMonitoringRequestLogging>? requestLogging;

  /// Creates a new [ConfigMonitoring].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  ConfigMonitoring({
    this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestLogging': ?pulumi.Input.mapOptionalInputValue<ConfigMonitoringRequestLogging, Map<String, dynamic>>(requestLogging, (value) => value.toMap()),
    };
  }

  factory ConfigMonitoring.fromMap(Map<String, dynamic> map) {
    return ConfigMonitoring(
      requestLogging: map['requestLogging'] == null ? null : (ConfigMonitoringRequestLogging.fromMap((map['requestLogging']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

