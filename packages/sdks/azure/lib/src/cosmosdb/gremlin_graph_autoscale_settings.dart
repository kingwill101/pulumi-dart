// ignore_for_file: unused_element, unnecessary_cast


class GremlinGraphAutoscaleSettings {
  /// The maximum throughput of the Gremlin graph (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final int? maxThroughput;

  /// Creates a new [GremlinGraphAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the Gremlin graph (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  GremlinGraphAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory GremlinGraphAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return GremlinGraphAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
    );
  }
}

