// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 &lt;= i &lt; N-1): boundsi Lower bound (1 &lt;= i &lt; N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.
class Explicit {
  /// The values must be monotonically increasing.
  final pulumi.Input<List<double>>? bounds;

  /// Creates a new [Explicit].
  /// [bounds] The values must be monotonically increasing.
  const Explicit({
    this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': ?bounds,
    };
  }

  factory Explicit.fromMap(Map<String, dynamic> map) {
    return Explicit(
      bounds: (() { final guardedValue = map['bounds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
    );
  }
}

