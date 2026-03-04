// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a specific logging destination (the producer project or the consumer project).
class LoggingDestination {
  /// Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by "/".
  final pulumi.Input<List<String>>? logs;

  /// The monitored resource type. The type must be defined in the Service.monitored_resources section.
  final pulumi.Input<String>? monitoredResource;

  /// Creates a new [LoggingDestination].
  /// [logs] Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by "/".
  /// [monitoredResource] The monitored resource type. The type must be defined in the Service.monitored_resources section.
  LoggingDestination({this.logs, this.monitoredResource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': ?logs,
      'monitoredResource': ?monitoredResource,
    };
  }

  factory LoggingDestination.fromMap(Map<String, dynamic> map) {
    return LoggingDestination(
      logs: (() {
        final guardedValue = map['logs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      monitoredResource: (() {
        final guardedValue = map['monitoredResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
