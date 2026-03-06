// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'explicit.dart';
import 'exponential.dart';
import 'linear.dart';

/// BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i &gt; 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.
class BucketOptions {
  /// The explicit buckets.
  final pulumi.Input<Explicit>? explicitBuckets;
  /// The exponential buckets.
  final pulumi.Input<Exponential>? exponentialBuckets;
  /// The linear bucket.
  final pulumi.Input<Linear>? linearBuckets;

  /// Creates a new [BucketOptions].
  /// [explicitBuckets] The explicit buckets.
  /// [exponentialBuckets] The exponential buckets.
  /// [linearBuckets] The linear bucket.
  const BucketOptions({
    this.explicitBuckets,
    this.exponentialBuckets,
    this.linearBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explicitBuckets': ?pulumi.Input.mapOptionalInputValue<Explicit, Map<String, dynamic>>(explicitBuckets, (value) => value.toMap()),
      'exponentialBuckets': ?pulumi.Input.mapOptionalInputValue<Exponential, Map<String, dynamic>>(exponentialBuckets, (value) => value.toMap()),
      'linearBuckets': ?pulumi.Input.mapOptionalInputValue<Linear, Map<String, dynamic>>(linearBuckets, (value) => value.toMap()),
    };
  }

  factory BucketOptions.fromMap(Map<String, dynamic> map) {
    return BucketOptions(
      explicitBuckets: (() { final guardedValue = map['explicitBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Explicit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exponentialBuckets: (() { final guardedValue = map['exponentialBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Exponential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linearBuckets: (() { final guardedValue = map['linearBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Linear.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

