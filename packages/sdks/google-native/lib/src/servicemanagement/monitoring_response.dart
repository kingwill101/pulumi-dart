// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_destination_response.dart';

/// Monitoring configuration of the service. The example below shows how to configure monitored resources and metrics for monitoring. In the example, a monitored resource and two metrics are defined. The `library.googleapis.com/book/returned_count` metric is sent to both producer and consumer projects, whereas the `library.googleapis.com/book/num_overdue` metric is only sent to the consumer project. monitored_resources: - type: library.googleapis.com/Branch display_name: "Library Branch" description: "A branch of a library." launch_stage: GA labels: - key: resource_container description: "The Cloud container (ie. project id) for the Branch." - key: location description: "The location of the library branch." - key: branch_id description: "The id of the branch." metrics: - name: library.googleapis.com/book/returned_count display_name: "Books Returned" description: "The count of books that have been returned." launch_stage: GA metric_kind: DELTA value_type: INT64 unit: "1" labels: - key: customer_id description: "The id of the customer." - name: library.googleapis.com/book/num_overdue display_name: "Books Overdue" description: "The current number of overdue books." launch_stage: GA metric_kind: GAUGE value_type: INT64 unit: "1" labels: - key: customer_id description: "The id of the customer." monitoring: producer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count consumer_destinations: - monitored_resource: library.googleapis.com/Branch metrics: - library.googleapis.com/book/returned_count - library.googleapis.com/book/num_overdue
class MonitoringResponse {
  /// Monitoring configurations for sending metrics to the consumer project. There can be multiple consumer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
  final pulumi.Input<List<MonitoringDestinationResponse>> consumerDestinations;
  /// Monitoring configurations for sending metrics to the producer project. There can be multiple producer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
  final pulumi.Input<List<MonitoringDestinationResponse>> producerDestinations;

  /// Creates a new [MonitoringResponse].
  /// [consumerDestinations] Monitoring configurations for sending metrics to the consumer project. There can be multiple consumer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
  /// [producerDestinations] Monitoring configurations for sending metrics to the producer project. There can be multiple producer destinations. A monitored resource type may appear in multiple monitoring destinations if different aggregations are needed for different sets of metrics associated with that monitored resource type. A monitored resource and metric pair may only be used once in the Monitoring configuration.
  MonitoringResponse({
    required this.consumerDestinations,
    required this.producerDestinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerDestinations': pulumi.Input.mapInputValue<List<MonitoringDestinationResponse>, List<Map<String, dynamic>>>(consumerDestinations, (value) => pulumi.Input.encodeList<MonitoringDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'producerDestinations': pulumi.Input.mapInputValue<List<MonitoringDestinationResponse>, List<Map<String, dynamic>>>(producerDestinations, (value) => pulumi.Input.encodeList<MonitoringDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitoringResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringResponse(
      consumerDestinations: pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringDestinationResponse>(map['consumerDestinations']!, (value) => MonitoringDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      producerDestinations: pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringDestinationResponse>(map['producerDestinations']!, (value) => MonitoringDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

