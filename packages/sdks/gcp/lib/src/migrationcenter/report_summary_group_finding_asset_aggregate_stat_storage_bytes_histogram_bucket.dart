// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket {
  /// (Output)
  /// Count of items in the bucket.
  final pulumi.Input<String>? count;
  /// (Output)
  /// Lower bound - inclusive.
  final pulumi.Input<String>? lowerBound;
  /// (Output)
  /// Upper bound - exclusive.
  final pulumi.Input<String>? upperBound;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket].
  /// [count] (Output)
  /// [lowerBound] (Output)
  /// [upperBound] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket({
    this.count,
    this.lowerBound,
    this.upperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'lowerBound': ?lowerBound,
      'upperBound': ?upperBound,
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lowerBound: (() { final guardedValue = map['lowerBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upperBound: (() { final guardedValue = map['upperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
