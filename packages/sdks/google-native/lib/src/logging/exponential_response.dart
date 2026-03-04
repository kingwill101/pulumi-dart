// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies an exponential sequence of buckets that have a width that is proportional to the value of the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 &lt;= i &lt; N-1): scale * (growth_factor ^ i).Lower bound (1 &lt;= i &lt; N): scale * (growth_factor ^ (i - 1)).
class ExponentialResponse {
  /// Must be greater than 1.
  final pulumi.Input<double> growthFactor;

  /// Must be greater than 0.
  final pulumi.Input<int> numFiniteBuckets;

  /// Must be greater than 0.
  final pulumi.Input<double> scale;

  /// Creates a new [ExponentialResponse].
  /// [growthFactor] Must be greater than 1.
  /// [numFiniteBuckets] Must be greater than 0.
  /// [scale] Must be greater than 0.
  ExponentialResponse({
    required this.growthFactor,
    required this.numFiniteBuckets,
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'growthFactor': growthFactor,
      'numFiniteBuckets': numFiniteBuckets,
      'scale': scale,
    };
  }

  factory ExponentialResponse.fromMap(Map<String, dynamic> map) {
    return ExponentialResponse(
      growthFactor: pulumi.Input.fromValue(map['growthFactor'] as double),
      numFiniteBuckets: pulumi.Input.fromValue(map['numFiniteBuckets'] as int),
      scale: pulumi.Input.fromValue(map['scale'] as double),
    );
  }
}
