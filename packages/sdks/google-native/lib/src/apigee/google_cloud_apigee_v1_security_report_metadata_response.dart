// ignore_for_file: unused_element, unnecessary_cast


/// Metadata for the security report.
class GoogleCloudApigeeV1SecurityReportMetadataResponse {
  /// Dimensions of the SecurityReport.
  final List<String> dimensions;
  /// End timestamp of the query range.
  final String endTimestamp;
  /// Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:sum_bot_count"]
  final List<String> metrics;
  /// MIME type / Output format.
  final String mimeType;
  /// Start timestamp of the query range.
  final String startTimestamp;
  /// Query GroupBy time unit. Example: "seconds", "minute", "hour"
  final String timeUnit;

  /// Creates a new [GoogleCloudApigeeV1SecurityReportMetadataResponse].
  /// [dimensions] Dimensions of the SecurityReport.
  /// [endTimestamp] End timestamp of the query range.
  /// [metrics] Metrics of the SecurityReport. Example: ["name:bot_count,func:sum,alias:sum_bot_count"]
  /// [mimeType] MIME type / Output format.
  /// [startTimestamp] Start timestamp of the query range.
  /// [timeUnit] Query GroupBy time unit. Example: "seconds", "minute", "hour"
  GoogleCloudApigeeV1SecurityReportMetadataResponse({
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
      dimensions: (map['dimensions'] as List).cast<String>(),
      endTimestamp: map['endTimestamp'] as String,
      metrics: (map['metrics'] as List).cast<String>(),
      mimeType: map['mimeType'] as String,
      startTimestamp: map['startTimestamp'] as String,
      timeUnit: map['timeUnit'] as String,
    );
  }
}

