// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_asset_aggregate_stat_core_count_histogram_bucket.dart';

class ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram {
  /// (Output)
  /// Buckets in the histogram.
  /// There will be `n+1` buckets matching `n` lower bounds in the request.
  /// The first bucket will be from -infinity to the first bound.
  /// Subsequent buckets will be between one bound and the next.
  /// The final bucket will be from the final bound to infinity.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogramBucket>>? buckets;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram].
  /// [buckets] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogramBucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogramBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogram(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogramBucket>(guardedValue, (value) => ReportSummaryGroupFindingAssetAggregateStatCoreCountHistogramBucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
