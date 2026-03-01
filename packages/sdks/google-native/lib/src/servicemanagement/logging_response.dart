// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_destination_response.dart';

/// Logging configuration of the service. The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the `activity_history` log is sent to both the producer and consumer projects, whereas the `purchase_history` log is only sent to the producer project. monitored_resources: - type: library.googleapis.com/branch labels: - key: /city description: The city where the library branch is located in. - key: /name description: The name of the branch. logs: - name: activity_history labels: - key: /customer_id - name: purchase_history logging: producer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history - purchase_history consumer_destinations: - monitored_resource: library.googleapis.com/branch logs: - activity_history
class LoggingResponse {
  /// Logging configurations for sending logs to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A log can be used in at most one consumer destination.
  final List<LoggingDestinationResponse> consumerDestinations;
  /// Logging configurations for sending logs to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A log can be used in at most one producer destination.
  final List<LoggingDestinationResponse> producerDestinations;

  /// Creates a new [LoggingResponse].
  /// [consumerDestinations] Logging configurations for sending logs to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A log can be used in at most one consumer destination.
  /// [producerDestinations] Logging configurations for sending logs to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A log can be used in at most one producer destination.
  LoggingResponse({
    required this.consumerDestinations,
    required this.producerDestinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerDestinations': pulumi.Input.encodeList<LoggingDestinationResponse, Map<String, dynamic>>(consumerDestinations, (value) => value.toMap()),
      'producerDestinations': pulumi.Input.encodeList<LoggingDestinationResponse, Map<String, dynamic>>(producerDestinations, (value) => value.toMap()),
    };
  }

  factory LoggingResponse.fromMap(Map<String, dynamic> map) {
    return LoggingResponse(
      consumerDestinations: pulumi.Input.decodeList<LoggingDestinationResponse>(map['consumerDestinations'], (value) => LoggingDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      producerDestinations: pulumi.Input.decodeList<LoggingDestinationResponse>(map['producerDestinations'], (value) => LoggingDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

