// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricBucketOptionsExponentialBuckets {
  /// Must be greater than 1.
  final pulumi.Input<double> growthFactor;
  /// Must be greater than 0.
  final pulumi.Input<int> numFiniteBuckets;
  /// Must be greater than 0.
  final pulumi.Input<double> scale;

  /// Creates a new [MetricBucketOptionsExponentialBuckets].
  /// [growthFactor] Must be greater than 1.
  /// [numFiniteBuckets] Must be greater than 0.
  /// [scale] Must be greater than 0.
  const MetricBucketOptionsExponentialBuckets({
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

  factory MetricBucketOptionsExponentialBuckets.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptionsExponentialBuckets(
      growthFactor: pulumi.Input.fromValue(map['growthFactor'] as double),
      numFiniteBuckets: pulumi.Input.fromValue(map['numFiniteBuckets'] as int),
      scale: pulumi.Input.fromValue(map['scale'] as double),
    );
  }
}
