// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlContainerAutoscaleSettings {
  /// The maximum throughput of the SQL container (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  final pulumi.Input<int>? maxThroughput;

  /// Creates a new [SqlContainerAutoscaleSettings].
  /// [maxThroughput] The maximum throughput of the SQL container (RU/s). Must be between `1,000` and `1,000,000`. Must be set in increments of `1,000`. Conflicts with `throughput`.
  SqlContainerAutoscaleSettings({
    this.maxThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxThroughput': ?maxThroughput,
    };
  }

  factory SqlContainerAutoscaleSettings.fromMap(Map<String, dynamic> map) {
    return SqlContainerAutoscaleSettings(
      maxThroughput: map['maxThroughput'] == null ? null : (map['maxThroughput'] as int).input(),
    );
  }
}

