// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo {
  /// (Output)
  /// The map holding related quota dimensions
  final pulumi.Input<Map<String, String>>? dimensions;
  /// (Output)
  /// Future quota limit being rolled out. The limit's unit depends on the quota type or metric.
  final pulumi.Input<int>? futureLimit;
  /// (Output)
  /// Current effective quota limit. The limit's unit depends on the quota type or metric.
  final pulumi.Input<int>? limit;
  /// (Output)
  /// The name of the quota limit.
  final pulumi.Input<String>? limitName;
  /// (Output)
  /// The Compute Engine quota metric name.
  final pulumi.Input<String>? metricName;
  /// (Output)
  /// Rollout status of the future quota limit.
  final pulumi.Input<String>? rolloutStatus;

  /// Creates a new [ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo].
  /// [dimensions] (Output)
  /// [futureLimit] (Output)
  /// [limit] (Output)
  /// [limitName] (Output)
  /// [metricName] (Output)
  /// [rolloutStatus] (Output)
  const ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo({
    this.dimensions,
    this.futureLimit,
    this.limit,
    this.limitName,
    this.metricName,
    this.rolloutStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?dimensions,
      'futureLimit': ?futureLimit,
      'limit': ?limit,
      'limitName': ?limitName,
      'metricName': ?metricName,
      'rolloutStatus': ?rolloutStatus,
    };
  }

  factory ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo.fromMap(Map<String, dynamic> map) {
    return ResizeRequestStatusLastAttemptErrorErrorErrorDetailQuotaInfo(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      futureLimit: (() { final guardedValue = map['futureLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      limitName: (() { final guardedValue = map['limitName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolloutStatus: (() { final guardedValue = map['rolloutStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
