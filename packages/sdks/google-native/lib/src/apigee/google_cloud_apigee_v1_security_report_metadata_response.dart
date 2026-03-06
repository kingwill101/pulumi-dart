// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for the security report.
class GoogleCloudApigeeV1SecurityReportMetadataResponse {
  /// Dimensions of the SecurityReport.
  final pulumi.Input<List<String>> dimensions;
  /// End timestamp of the query range.
  final pulumi.Input<String> endTimestamp;
  /// Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:sum_bot_count"]
  final pulumi.Input<List<String>> metrics;
  /// MIME type / Output format.
  final pulumi.Input<String> mimeType;
  /// Start timestamp of the query range.
  final pulumi.Input<String> startTimestamp;
  /// Query GroupBy time unit. Example: "seconds", "minute", "hour"
  final pulumi.Input<String> timeUnit;

  /// Creates a new [GoogleCloudApigeeV1SecurityReportMetadataResponse].
  /// [dimensions] Dimensions of the SecurityReport.
  /// [endTimestamp] End timestamp of the query range.
  /// [metrics] Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:sum_bot_count"]
  /// [mimeType] MIME type / Output format.
  /// [startTimestamp] Start timestamp of the query range.
  /// [timeUnit] Query GroupBy time unit. Example: "seconds", "minute", "hour"
  const GoogleCloudApigeeV1SecurityReportMetadataResponse({
    required this.dimensions,
    required this.endTimestamp,
    required this.metrics,
    required this.mimeType,
    required this.startTimestamp,
    required this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': dimensions,
      'endTimestamp': endTimestamp,
      'metrics': metrics,
      'mimeType': mimeType,
      'startTimestamp': startTimestamp,
      'timeUnit': timeUnit,
    };
  }

  factory GoogleCloudApigeeV1SecurityReportMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityReportMetadataResponse(
      dimensions: pulumi.Input.fromValue((map['dimensions'] as List).cast<String>()),
      endTimestamp: pulumi.Input.fromValue(map['endTimestamp'] as String),
      metrics: pulumi.Input.fromValue((map['metrics'] as List).cast<String>()),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
      startTimestamp: pulumi.Input.fromValue(map['startTimestamp'] as String),
      timeUnit: pulumi.Input.fromValue(map['timeUnit'] as String),
    );
  }
}

