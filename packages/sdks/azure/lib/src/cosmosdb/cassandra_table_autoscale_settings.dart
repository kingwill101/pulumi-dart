// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CassandraTableAutoscaleSettings {
  /// The maximum throughput of the Cassandra Table (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final pulumi.Input<int>? maxThroughput;

  /// Creates a new [CassandraTableAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the Cassandra Table (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  const CassandraTableAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory CassandraTableAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return CassandraTableAutoscaleSettings(
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
