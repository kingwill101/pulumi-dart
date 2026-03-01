// ignore_for_file: unused_element, unnecessary_cast


class MetricBucketOptionsLinearBuckets {
  /// Must be greater than 0.
  final int numFiniteBuckets;
  /// Lower bound of the first bucket.
  final double offset;
  /// Must be greater than 0.
  final double width;

  /// Creates a new [MetricBucketOptionsLinearBuckets].
  /// [numFiniteBuckets] Must be greater than 0.
  /// [offset] Lower bound of the first bucket.
  /// [width] Must be greater than 0.
  MetricBucketOptionsLinearBuckets({
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
      numFiniteBuckets: map['numFiniteBuckets'] as int,
      offset: map['offset'] as double,
      width: map['width'] as double,
    );
  }
}

