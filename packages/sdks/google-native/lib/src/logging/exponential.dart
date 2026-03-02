// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i < N): scale * (growth_factor ^ (i - 1)).
class Exponential {
  /// Must be greater than 1.
  final pulumi.Input<double>? growthFactor;
  /// Must be greater than 0.
  final pulumi.Input<int>? numFiniteBuckets;
  /// Must be greater than 0.
  final pulumi.Input<double>? scale;

  /// Creates a new [Exponential].
  /// [growthFactor] Must be greater than 1.
  /// [numFiniteBuckets] Must be greater than 0.
  /// [scale] Must be greater than 0.
  Exponential({
    this.growthFactor,
    this.numFiniteBuckets,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'growthFactor': ?growthFactor,
      'numFiniteBuckets': ?numFiniteBuckets,
      'scale': ?scale,
    };
  }

  factory Exponential.fromMap(Map<String, dynamic> map) {
    return Exponential(
      growthFactor: map['growthFactor'] == null ? null : (map['growthFactor'] as double).input(),
      numFiniteBuckets: map['numFiniteBuckets'] == null ? null : (map['numFiniteBuckets'] as int).input(),
      scale: map['scale'] == null ? null : (map['scale'] as double).input(),
    );
  }
}

