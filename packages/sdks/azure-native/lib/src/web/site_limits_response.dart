// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metric limits set on an app.
class SiteLimitsResponse {
  /// Maximum allowed disk size usage in MB.
  final pulumi.Input<double?>? maxDiskSizeInMb;
  /// Maximum allowed memory usage in MB.
  final pulumi.Input<double?>? maxMemoryInMb;
  /// Maximum allowed CPU usage percentage.
  final pulumi.Input<double?>? maxPercentageCpu;

  /// Creates a new [SiteLimitsResponse].
  /// [maxDiskSizeInMb] Maximum allowed disk size usage in MB.
  /// [maxMemoryInMb] Maximum allowed memory usage in MB.
  /// [maxPercentageCpu] Maximum allowed CPU usage percentage.
  const SiteLimitsResponse({
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
      maxDiskSizeInMb: (() { final guardedValue = map['maxDiskSizeInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxMemoryInMb: (() { final guardedValue = map['maxMemoryInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxPercentageCpu: (() { final guardedValue = map['maxPercentageCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
