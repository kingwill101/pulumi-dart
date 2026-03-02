// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoDatabaseAutoscaleSettings {
  /// The maximum throughput of the MongoDB database (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final pulumi.Input<int>? maxThroughput;

  /// Creates a new [MongoDatabaseAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the MongoDB database (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  MongoDatabaseAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory MongoDatabaseAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return MongoDatabaseAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : (map['maxThroughput']! as int).input(),
    );
  }
}

