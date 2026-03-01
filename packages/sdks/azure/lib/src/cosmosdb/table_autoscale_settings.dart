// ignore_for_file: unused_element, unnecessary_cast


class TableAutoscaleSettings {
  /// The maximum throughput of the Table (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final int? maxThroughput;

  /// Creates a new [TableAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the Table (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  TableAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory TableAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return TableAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : map['maxThroughput'] as int,
    );
  }
}

