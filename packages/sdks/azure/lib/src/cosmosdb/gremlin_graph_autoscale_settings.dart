// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GremlinGraphAutoscaleSettings {
  /// The maximum throughput of the Gremlin graph (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final pulumi.Input<int?>? maxThroughput;

  /// Creates a new [GremlinGraphAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the Gremlin graph (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  const GremlinGraphAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory GremlinGraphAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return GremlinGraphAutoscaleSettings(
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
