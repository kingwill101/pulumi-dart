// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow). Each bucket represents a constant absolute uncertainty on the specific value in the bucket.There are num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 &lt;= i &lt; N-1): offset + (width * i).Lower bound (1 &lt;= i &lt; N): offset + (width * (i - 1)).
class Linear {
  /// Must be greater than 0.
  final pulumi.Input<int>? numFiniteBuckets;

  /// Lower bound of the first bucket.
  final pulumi.Input<double>? offset;

  /// Must be greater than 0.
  final pulumi.Input<double>? width;

  /// Creates a new [Linear].
  /// [numFiniteBuckets] Must be greater than 0.
  /// [offset] Lower bound of the first bucket.
  /// [width] Must be greater than 0.
  Linear({this.numFiniteBuckets, this.offset, this.width});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numFiniteBuckets': ?numFiniteBuckets,
      'offset': ?offset,
      'width': ?width,
    };
  }

  factory Linear.fromMap(Map<String, dynamic> map) {
    return Linear(
      numFiniteBuckets: (() {
        final guardedValue = map['numFiniteBuckets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      offset: (() {
        final guardedValue = map['offset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      width: (() {
        final guardedValue = map['width'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
