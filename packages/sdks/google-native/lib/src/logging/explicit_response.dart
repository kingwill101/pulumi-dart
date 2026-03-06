// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 &lt;= i &lt; N-1): boundsi Lower bound (1 &lt;= i &lt; N); boundsi - 1The bounds field must contain at least one element. If bounds has only one element, then there are no finite buckets, and that single element is the common boundary of the overflow and underflow buckets.
class ExplicitResponse {
  /// The values must be monotonically increasing.
  final pulumi.Input<List<double>> bounds;

  /// Creates a new [ExplicitResponse].
  /// [bounds] The values must be monotonically increasing.
  const ExplicitResponse({
    required this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': bounds,
    };
  }

  factory ExplicitResponse.fromMap(Map<String, dynamic> map) {
    return ExplicitResponse(
      bounds: pulumi.Input.fromValue((map['bounds'] as List).cast<double>()),
    );
  }
}

