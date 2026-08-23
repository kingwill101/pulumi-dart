// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_descriptor_metadata_launch_stage.dart';

/// Additional annotations that can be used to guide the usage of a metric.
class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  final pulumi.Input<String>? ingestDelay;
  /// Deprecated. Must use the MetricDescriptor.launch_stage instead.
  final pulumi.Input<MetricDescriptorMetadataLaunchStage>? launchStage;
  /// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  final pulumi.Input<String>? samplePeriod;

  /// Creates a new [MetricDescriptorMetadata].
  /// [ingestDelay] The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors.
  /// [launchStage] Deprecated. Must use the MetricDescriptor.launch_stage instead.
  /// [samplePeriod] The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period.
  const MetricDescriptorMetadata({
    this.ingestDelay,
    this.launchStage,
    this.samplePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestDelay': ?ingestDelay,
      'launchStage': ?pulumi.Input.mapOptionalInputValue<MetricDescriptorMetadataLaunchStage, String>(launchStage, (value) => value.wireValue),
      'samplePeriod': ?samplePeriod,
    };
  }

  factory MetricDescriptorMetadata.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorMetadata(
      ingestDelay: (() { final guardedValue = map['ingestDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricDescriptorMetadataLaunchStage.fromValue(guardedValue as String)); })(),
      samplePeriod: (() { final guardedValue = map['samplePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
