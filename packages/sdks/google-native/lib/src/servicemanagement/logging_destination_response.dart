// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a specific logging destination (the producer project or the consumer project).
class LoggingDestinationResponse {
  /// Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by "/".
  final pulumi.Input<List<String>> logs;
  /// The monitored resource type. The type must be defined in the Service.monitored_resources section.
  final pulumi.Input<String> monitoredResource;

  /// Creates a new [LoggingDestinationResponse].
  /// [logs] Names of the logs to be sent to this destination. Each name must be defined in the Service.logs section. If the log name is not a domain scoped name, it will be automatically prefixed with the service name followed by "/".
  /// [monitoredResource] The monitored resource type. The type must be defined in the Service.monitored_resources section.
  const LoggingDestinationResponse({
    required this.logs,
    required this.monitoredResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logs': logs,
      'monitoredResource': monitoredResource,
    };
  }

  factory LoggingDestinationResponse.fromMap(Map<String, dynamic> map) {
    return LoggingDestinationResponse(
      logs: pulumi.Input.fromValue((map['logs'] as List).cast<String>()),
      monitoredResource: pulumi.Input.fromValue(map['monitoredResource'] as String),
    );
  }
}
