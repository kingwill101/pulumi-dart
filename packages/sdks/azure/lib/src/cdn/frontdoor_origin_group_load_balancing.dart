// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorOriginGroupLoadBalancing {
  /// Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket. Possible values are between `0` and `1000` milliseconds (inclusive). Defaults to `50`.
  final pulumi.Input<int>? additionalLatencyInMilliseconds;
  /// Specifies the number of samples to consider for load balancing decisions. Possible values are between `0` and `255` (inclusive). Defaults to `4`.
  final pulumi.Input<int>? sampleSize;
  /// Specifies the number of samples within the sample period that must succeed. Possible values are between `0` and `255` (inclusive). Defaults to `3`.
  final pulumi.Input<int>? successfulSamplesRequired;

  /// Creates a new [FrontdoorOriginGroupLoadBalancing].
  /// [additionalLatencyInMilliseconds] Specifies the additional latency in milliseconds for probes to fall into the lowest latency bucket. Possible values are between `0` and `1000` milliseconds (inclusive). Defaults to `50`.
  /// [sampleSize] Specifies the number of samples to consider for load balancing decisions. Possible values are between `0` and `255` (inclusive). Defaults to `4`.
  /// [successfulSamplesRequired] Specifies the number of samples within the sample period that must succeed. Possible values are between `0` and `255` (inclusive). Defaults to `3`.
  FrontdoorOriginGroupLoadBalancing({
    this.additionalLatencyInMilliseconds,
    this.sampleSize,
    this.successfulSamplesRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLatencyInMilliseconds': ?additionalLatencyInMilliseconds,
      'sampleSize': ?sampleSize,
      'successfulSamplesRequired': ?successfulSamplesRequired,
    };
  }

  factory FrontdoorOriginGroupLoadBalancing.fromMap(Map<String, dynamic> map) {
    return FrontdoorOriginGroupLoadBalancing(
      additionalLatencyInMilliseconds: map['additionalLatencyInMilliseconds'] == null ? null : (map['additionalLatencyInMilliseconds'] as int).input(),
      sampleSize: map['sampleSize'] == null ? null : (map['sampleSize'] as int).input(),
      successfulSamplesRequired: map['successfulSamplesRequired'] == null ? null : (map['successfulSamplesRequired'] as int).input(),
    );
  }
}

