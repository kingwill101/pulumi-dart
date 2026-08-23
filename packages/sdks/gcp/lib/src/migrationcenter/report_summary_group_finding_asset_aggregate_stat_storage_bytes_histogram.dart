// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_asset_aggregate_stat_storage_bytes_histogram_bucket.dart';

class ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram {
  /// (Output)
  /// Buckets in the histogram.
  /// There will be `n+1` buckets matching `n` lower bounds in the request.
  /// The first bucket will be from -infinity to the first bound.
  /// Subsequent buckets will be between one bound and the next.
  /// The final bucket will be from the final bound to infinity.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket>>? buckets;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram].
  /// [buckets] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogram(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatStorageBytesHistogramBucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
