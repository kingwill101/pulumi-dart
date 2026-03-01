// ignore_for_file: unused_element, unnecessary_cast


class SparkPoolAutoScale {
  /// The maximum number of nodes the Spark Pool can support. Must be between `3` and `200`.
  final int maxNodeCount;
  /// The minimum number of nodes the Spark Pool can support. Must be between `3` and `200`.
  final int minNodeCount;

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
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
    );
  }
}

