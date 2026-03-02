// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_bucket_options_explicit_buckets.dart';
import 'metric_bucket_options_exponential_buckets.dart';
import 'metric_bucket_options_linear_buckets.dart';

class MetricBucketOptions {
  /// Specifies a set of buckets with arbitrary widths.
  /// Structure is documented below.
  final pulumi.Input<MetricBucketOptionsExplicitBuckets>? explicitBuckets;
  /// Specifies an exponential sequence of buckets that have a width that is proportional to the value of
  /// the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.
  /// Structure is documented below.
  final pulumi.Input<MetricBucketOptionsExponentialBuckets>? exponentialBuckets;
  /// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
  /// Each bucket represents a constant absolute uncertainty on the specific value in the bucket.
  /// Structure is documented below.
  final pulumi.Input<MetricBucketOptionsLinearBuckets>? linearBuckets;

  /// Creates a new [MetricBucketOptions].
  /// [explicitBuckets] Specifies a set of buckets with arbitrary widths.
  /// [exponentialBuckets] Specifies an exponential sequence of buckets that have a width that is proportional to the value of
  /// [linearBuckets] Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
  MetricBucketOptions({
    this.explicitBuckets,
    this.exponentialBuckets,
    this.linearBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explicitBuckets': ?pulumi.Input.mapOptionalInputValue<MetricBucketOptionsExplicitBuckets, Map<String, dynamic>>(explicitBuckets, (value) => value.toMap()),
      'exponentialBuckets': ?pulumi.Input.mapOptionalInputValue<MetricBucketOptionsExponentialBuckets, Map<String, dynamic>>(exponentialBuckets, (value) => value.toMap()),
      'linearBuckets': ?pulumi.Input.mapOptionalInputValue<MetricBucketOptionsLinearBuckets, Map<String, dynamic>>(linearBuckets, (value) => value.toMap()),
    };
  }

  factory MetricBucketOptions.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptions(
      explicitBuckets: map['explicitBuckets'] == null ? null : (MetricBucketOptionsExplicitBuckets.fromMap((map['explicitBuckets'] as Map).cast<String, dynamic>())).input(),
      exponentialBuckets: map['exponentialBuckets'] == null ? null : (MetricBucketOptionsExponentialBuckets.fromMap((map['exponentialBuckets'] as Map).cast<String, dynamic>())).input(),
      linearBuckets: map['linearBuckets'] == null ? null : (MetricBucketOptionsLinearBuckets.fromMap((map['linearBuckets'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

