// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetricBucketOptionsExplicitBuckets {
  /// The values must be monotonically increasing.
  final pulumi.Input<List<double>> bounds;

  /// Creates a new [MetricBucketOptionsExplicitBuckets].
  /// [bounds] The values must be monotonically increasing.
  const MetricBucketOptionsExplicitBuckets({
    required this.bounds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bounds': bounds,
    };
  }

  factory MetricBucketOptionsExplicitBuckets.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptionsExplicitBuckets(
      bounds: pulumi.Input.fromValue((map['bounds'] as List).cast<double>()),
    );
  }
}

