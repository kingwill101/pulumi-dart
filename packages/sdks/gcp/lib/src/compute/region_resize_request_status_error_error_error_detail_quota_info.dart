// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo {
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

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo].
  /// [dimensions] (Output)
  /// [futureLimit] (Output)
  /// [limit] (Output)
  /// [limitName] (Output)
  /// [metricName] (Output)
  /// [rolloutStatus] (Output)
  RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo({
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

  factory RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo.fromMap(Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailQuotaInfo(
      dimensions: map['dimensions'] == null ? null : ((map['dimensions']! as Map).cast<String, String>()).input(),
      futureLimit: map['futureLimit'] == null ? null : (map['futureLimit']! as int).input(),
      limit: map['limit'] == null ? null : (map['limit']! as int).input(),
      limitName: map['limitName'] == null ? null : (map['limitName']! as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName']! as String).input(),
      rolloutStatus: map['rolloutStatus'] == null ? null : (map['rolloutStatus']! as String).input(),
    );
  }
}

