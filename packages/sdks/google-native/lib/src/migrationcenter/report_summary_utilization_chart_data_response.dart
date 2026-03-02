// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Utilization Chart is a specific type of visualization which displays a metric classified into "Used" and "Free" buckets.
class ReportSummaryUtilizationChartDataResponse {
  /// Aggregate value which falls into the "Free" bucket.
  final pulumi.Input<String> free;
  /// Aggregate value which falls into the "Used" bucket.
  final pulumi.Input<String> used;

  /// Creates a new [ReportSummaryUtilizationChartDataResponse].
  /// [free] Aggregate value which falls into the "Free" bucket.
  /// [used] Aggregate value which falls into the "Used" bucket.
  ReportSummaryUtilizationChartDataResponse({
    required this.free,
    required this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'free': free,
      'used': used,
    };
  }

  factory ReportSummaryUtilizationChartDataResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryUtilizationChartDataResponse(
      free: (map['free'] as String).input(),
      used: (map['used'] as String).input(),
    );
  }
}

