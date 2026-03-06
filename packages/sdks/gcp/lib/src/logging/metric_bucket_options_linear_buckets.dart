// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricBucketOptionsLinearBuckets {
  /// Must be greater than 0.
  final pulumi.Input<int> numFiniteBuckets;
  /// Lower bound of the first bucket.
  final pulumi.Input<double> offset;
  /// Must be greater than 0.
  final pulumi.Input<double> width;

  /// Creates a new [MetricBucketOptionsLinearBuckets].
  /// [numFiniteBuckets] Must be greater than 0.
  /// [offset] Lower bound of the first bucket.
  /// [width] Must be greater than 0.
  const MetricBucketOptionsLinearBuckets({
    required this.numFiniteBuckets,
    required this.offset,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numFiniteBuckets': numFiniteBuckets,
      'offset': offset,
      'width': width,
    };
  }

  factory MetricBucketOptionsLinearBuckets.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptionsLinearBuckets(
      numFiniteBuckets: pulumi.Input.fromValue(map['numFiniteBuckets'] as int),
      offset: pulumi.Input.fromValue(map['offset'] as double),
      width: pulumi.Input.fromValue(map['width'] as double),
    );
  }
}

