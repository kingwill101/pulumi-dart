// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Utilization Chart is a specific type of visualization which displays a metric classified into "Used" and "Free" buckets.
class ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1 {
  /// Aggregate value which falls into the "Free" bucket.
  final pulumi.Input<String> free;
  /// Aggregate value which falls into the "Used" bucket.
  final pulumi.Input<String> used;

  /// Creates a new [ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1].
  /// [free] Aggregate value which falls into the "Free" bucket.
  /// [used] Aggregate value which falls into the "Used" bucket.
  const ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1({
    required this.free,
    required this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'free': free,
      'used': used,
    };
  }

  factory ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryUtilizationChartDataResponseMigrationcenterV1alpha1(
      free: pulumi.Input.fromValue(map['free'] as String),
      used: pulumi.Input.fromValue(map['used'] as String),
    );
  }
}
