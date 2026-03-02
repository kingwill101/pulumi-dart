// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_histogram_chart_data_bucket_response.dart';

/// A Histogram Chart shows a distribution of values into buckets, showing a count of values which fall into a bucket.
class ReportSummaryHistogramChartDataResponse {
  /// Buckets in the histogram. There will be `n+1` buckets matching `n` lower bounds in the request. The first bucket will be from -infinity to the first bound. Subsequent buckets will be between one bound and the next. The final bucket will be from the final bound to infinity.
  final pulumi.Input<List<ReportSummaryHistogramChartDataBucketResponse>> buckets;

  /// Creates a new [ReportSummaryHistogramChartDataResponse].
  /// [buckets] Buckets in the histogram. There will be `n+1` buckets matching `n` lower bounds in the request. The first bucket will be from -infinity to the first bound. Subsequent buckets will be between one bound and the next. The final bucket will be from the final bound to infinity.
  ReportSummaryHistogramChartDataResponse({
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': pulumi.Input.mapInputValue<List<ReportSummaryHistogramChartDataBucketResponse>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<ReportSummaryHistogramChartDataBucketResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryHistogramChartDataResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryHistogramChartDataResponse(
      buckets: (pulumi.Input.decodeList<ReportSummaryHistogramChartDataBucketResponse>(map['buckets'], (value) => ReportSummaryHistogramChartDataBucketResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

