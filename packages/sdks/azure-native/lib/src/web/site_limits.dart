// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metric limits set on an app.
class SiteLimits {
  /// Maximum allowed disk size usage in MB.
  final pulumi.Input<double>? maxDiskSizeInMb;
  /// Maximum allowed memory usage in MB.
  final pulumi.Input<double>? maxMemoryInMb;
  /// Maximum allowed CPU usage percentage.
  final pulumi.Input<double>? maxPercentageCpu;

  /// Creates a new [SiteLimits].
  /// [maxDiskSizeInMb] Maximum allowed disk size usage in MB.
  /// [maxMemoryInMb] Maximum allowed memory usage in MB.
  /// [maxPercentageCpu] Maximum allowed CPU usage percentage.
  SiteLimits({
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

  factory SiteLimits.fromMap(Map<String, dynamic> map) {
    return SiteLimits(
      maxDiskSizeInMb: map['maxDiskSizeInMb'] == null ? null : (map['maxDiskSizeInMb'] as double).input(),
      maxMemoryInMb: map['maxMemoryInMb'] == null ? null : (map['maxMemoryInMb'] as double).input(),
      maxPercentageCpu: map['maxPercentageCpu'] == null ? null : (map['maxPercentageCpu'] as double).input(),
    );
  }
}

