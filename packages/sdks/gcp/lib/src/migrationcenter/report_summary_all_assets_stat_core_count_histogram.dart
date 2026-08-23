// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_all_assets_stat_core_count_histogram_bucket.dart';

class ReportSummaryAllAssetsStatCoreCountHistogram {
  /// (Output)
  /// Buckets in the histogram.
  /// There will be `n+1` buckets matching `n` lower bounds in the request.
  /// The first bucket will be from -infinity to the first bound.
  /// Subsequent buckets will be between one bound and the next.
  /// The final bucket will be from the final bound to infinity.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryAllAssetsStatCoreCountHistogramBucket>>? buckets;

  /// Creates a new [ReportSummaryAllAssetsStatCoreCountHistogram].
  /// [buckets] (Output)
  const ReportSummaryAllAssetsStatCoreCountHistogram({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryAllAssetsStatCoreCountHistogramBucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<ReportSummaryAllAssetsStatCoreCountHistogramBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryAllAssetsStatCoreCountHistogram.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStatCoreCountHistogram(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryAllAssetsStatCoreCountHistogramBucket>(guardedValue, (value) => ReportSummaryAllAssetsStatCoreCountHistogramBucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
