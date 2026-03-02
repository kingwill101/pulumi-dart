// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadataResponse {
  /// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  final pulumi.Input<String> ingestDelay;
  /// Deprecated. Must use the MetricDescriptor.launch_stage instead.
  final pulumi.Input<String> launchStage;
  /// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  final pulumi.Input<String> samplePeriod;

  /// Creates a new [MetricDescriptorMetadataResponse].
  /// [ingestDelay] The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  /// [launchStage] Deprecated. Must use the MetricDescriptor.launch_stage instead.
  /// [samplePeriod] The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  MetricDescriptorMetadataResponse({
    required this.ingestDelay,
    required this.launchStage,
    required this.samplePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestDelay': ingestDelay,
      'launchStage': launchStage,
      'samplePeriod': samplePeriod,
    };
  }

  factory MetricDescriptorMetadataResponse.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorMetadataResponse(
      ingestDelay: (map['ingestDelay'] as String).input(),
      launchStage: (map['launchStage'] as String).input(),
      samplePeriod: (map['samplePeriod'] as String).input(),
    );
  }
}

