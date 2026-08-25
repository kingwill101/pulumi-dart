// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix {
  /// The percentage increase for this prefix.
  final pulumi.Input<double> percentageIncrease;
  /// The prefix string.
  final pulumi.Input<String> prefix;
  /// The number of throttled requests for this prefix.
  final pulumi.Input<String> throttledRequests;
  /// The total egress bytes for this prefix.
  final pulumi.Input<String> totalEgressBytes;
  /// The total operations count for this prefix.
  final pulumi.Input<String> totalOperationsCount;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix].
  /// [percentageIncrease] The percentage increase for this prefix.
  /// [prefix] The prefix string.
  /// [throttledRequests] The number of throttled requests for this prefix.
  /// [totalEgressBytes] The total egress bytes for this prefix.
  /// [totalOperationsCount] The total operations count for this prefix.
  const GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix({
    required this.percentageIncrease,
    required this.prefix,
    required this.throttledRequests,
    required this.totalEgressBytes,
    required this.totalOperationsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentageIncrease': percentageIncrease,
      'prefix': prefix,
      'throttledRequests': throttledRequests,
      'totalEgressBytes': totalEgressBytes,
      'totalOperationsCount': totalOperationsCount,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotThrottledRequestsSpikeTopBucketContributionTopPrefix(
      percentageIncrease: pulumi.Input.fromValue((map['percentageIncrease'] as num).toDouble()),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      throttledRequests: pulumi.Input.fromValue(map['throttledRequests'] as String),
      totalEgressBytes: pulumi.Input.fromValue(map['totalEgressBytes'] as String),
      totalOperationsCount: pulumi.Input.fromValue(map['totalOperationsCount'] as String),
    );
  }
}
