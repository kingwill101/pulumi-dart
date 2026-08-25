// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_monitoring_request_logging.dart';

class ConfigMonitoring {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  /// Structure is documented below.
  final pulumi.Input<ConfigMonitoringRequestLogging?>? requestLogging;

  /// Creates a new [ConfigMonitoring].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  const ConfigMonitoring({
    this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestLogging': ?pulumi.Input.mapOptionalInputValue<ConfigMonitoringRequestLogging, Map<String, dynamic>>(requestLogging, (value) => value.toMap()),
    };
  }

  factory ConfigMonitoring.fromMap(Map<String, dynamic> map) {
    return ConfigMonitoring(
      requestLogging: (() { final guardedValue = map['requestLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMonitoringRequestLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
