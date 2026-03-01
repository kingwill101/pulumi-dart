// ignore_for_file: unused_element, unnecessary_cast


/// Metric limits set on an app.
class SiteLimitsResponse {
  /// Maximum allowed disk size usage in MB.
  final double? maxDiskSizeInMb;
  /// Maximum allowed memory usage in MB.
  final double? maxMemoryInMb;
  /// Maximum allowed CPU usage percentage.
  final double? maxPercentageCpu;

  /// Creates a new [SiteLimitsResponse].
  /// [maxDiskSizeInMb] Maximum allowed disk size usage in MB.
  /// [maxMemoryInMb] Maximum allowed memory usage in MB.
  /// [maxPercentageCpu] Maximum allowed CPU usage percentage.
  SiteLimitsResponse({
    this.maxDiskSizeInMb,
    this.maxMemoryInMb,
    this.maxPercentageCpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDiskSizeInMb': ?maxDiskSizeInMb,
      'maxMemoryInMb': ?maxMemoryInMb,
      'maxPercentageCpu': ?maxPercentageCpu,
    };
  }

  factory SiteLimitsResponse.fromMap(Map<String, dynamic> map) {
    return SiteLimitsResponse(
      maxDiskSizeInMb: map['maxDiskSizeInMb'] == null ? null : map['maxDiskSizeInMb'] as double,
      maxMemoryInMb: map['maxMemoryInMb'] == null ? null : map['maxMemoryInMb'] as double,
      maxPercentageCpu: map['maxPercentageCpu'] == null ? null : map['maxPercentageCpu'] as double,
    );
  }
}

