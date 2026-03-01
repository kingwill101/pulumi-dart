// ignore_for_file: unused_element, unnecessary_cast


class MetricDescriptorMetadata {
  /// The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In `[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)`.
  final String? ingestDelay;
  /// The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In `[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)`.
  final String? samplePeriod;

  /// Creates a new [MetricDescriptorMetadata].
  /// [ingestDelay] The delay of data points caused by ingestion. Data points older than this age are guaranteed to be ingested and available to be read, excluding data loss due to errors. In `[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)`.
  /// [samplePeriod] The sampling period of metric data points. For metrics which are written periodically, consecutive data points are stored at this time interval, excluding data loss due to errors. Metrics with a higher granularity have a smaller sampling period. In `[duration format](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf?&_ga=2.264881487.1507873253.1593446723-935052455.1591817775#google.protobuf.Duration)`.
  MetricDescriptorMetadata({
    this.ingestDelay,
    this.samplePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestDelay': ?ingestDelay,
      'samplePeriod': ?samplePeriod,
    };
  }

  factory MetricDescriptorMetadata.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorMetadata(
      ingestDelay: map['ingestDelay'] == null ? null : map['ingestDelay'] as String,
      samplePeriod: map['samplePeriod'] == null ? null : map['samplePeriod'] as String,
    );
  }
}

