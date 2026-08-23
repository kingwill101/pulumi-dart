// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 &lt;= i &lt; N-1): offset + (width * i).Lower bound (1 &lt;= i &lt; N): offset + (width * (i - 1)).
class LinearResponse {
  /// Must be greater than 0.
  final pulumi.Input<int> numFiniteBuckets;
  /// Lower bound of the first bucket.
  final pulumi.Input<double> offset;
  /// Must be greater than 0.
  final pulumi.Input<double> width;

  /// Creates a new [LinearResponse].
  /// [numFiniteBuckets] Must be greater than 0.
  /// [offset] Lower bound of the first bucket.
  /// [width] Must be greater than 0.
  const LinearResponse({
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

  factory LinearResponse.fromMap(Map<String, dynamic> map) {
    return LinearResponse(
      numFiniteBuckets: pulumi.Input.fromValue(map['numFiniteBuckets'] as int),
      offset: pulumi.Input.fromValue(map['offset'] as double),
      width: pulumi.Input.fromValue(map['width'] as double),
    );
  }
}
