// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkPoolAutoScale {
  /// The maximum number of nodes the Spark Pool can support. Must be between `3` and `200`.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes the Spark Pool can support. Must be between `3` and `200`.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [SparkPoolAutoScale].
  /// [maxNodeCount] The maximum number of nodes the Spark Pool can support. Must be between `3` and `200`.
  /// [minNodeCount] The minimum number of nodes the Spark Pool can support. Must be between `3` and `200`.
  SparkPoolAutoScale({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory SparkPoolAutoScale.fromMap(Map<String, dynamic> map) {
    return SparkPoolAutoScale(
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
    );
  }
}

