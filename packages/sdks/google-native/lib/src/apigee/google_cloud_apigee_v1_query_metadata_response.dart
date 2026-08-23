// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudApigeeV1QueryMetadataResponse {
  /// Dimensions of the AsyncQuery.
  final pulumi.Input<List<String>> dimensions;
  /// End timestamp of the query range.
  final pulumi.Input<String> endTimestamp;
  /// Metrics of the AsyncQuery. Example: ["name:message_count,func:sum,alias:sum_message_count"]
  final pulumi.Input<List<String>> metrics;
  /// Output format.
  final pulumi.Input<String> outputFormat;
  /// Start timestamp of the query range.
  final pulumi.Input<String> startTimestamp;
  /// Query GroupBy time unit.
  final pulumi.Input<String> timeUnit;

  /// Creates a new [GoogleCloudApigeeV1QueryMetadataResponse].
  /// [dimensions] Dimensions of the AsyncQuery.
  /// [endTimestamp] End timestamp of the query range.
  /// [metrics] Metrics of the AsyncQuery. Example: ["name:message_count,func:sum,alias:sum_message_count"]
  /// [outputFormat] Output format.
  /// [startTimestamp] Start timestamp of the query range.
  /// [timeUnit] Query GroupBy time unit.
  const GoogleCloudApigeeV1QueryMetadataResponse({
    required this.dimensions,
    required this.endTimestamp,
    required this.metrics,
    required this.outputFormat,
    required this.startTimestamp,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': dimensions,
      'endTimestamp': endTimestamp,
      'metrics': metrics,
      'outputFormat': outputFormat,
      'startTimestamp': startTimestamp,
      'timeUnit': timeUnit,
    };
  }

  factory GoogleCloudApigeeV1QueryMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1QueryMetadataResponse(
      dimensions: pulumi.Input.fromValue((map['dimensions'] as List).cast<String>()),
      endTimestamp: pulumi.Input.fromValue(map['endTimestamp'] as String),
      metrics: pulumi.Input.fromValue((map['metrics'] as List).cast<String>()),
      outputFormat: pulumi.Input.fromValue(map['outputFormat'] as String),
      startTimestamp: pulumi.Input.fromValue(map['startTimestamp'] as String),
      timeUnit: pulumi.Input.fromValue(map['timeUnit'] as String),
    );
  }
}
