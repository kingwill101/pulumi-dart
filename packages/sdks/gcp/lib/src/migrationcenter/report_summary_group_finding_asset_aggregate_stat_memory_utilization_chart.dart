// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart {
  /// (Output)
  /// Aggregate value which falls into the "Free" bucket.
  final pulumi.Input<String?>? free;
  /// (Output)
  /// Aggregate value which falls into the "Used" bucket.
  final pulumi.Input<String?>? used;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart].
  /// [free] (Output)
  /// [used] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart({
    this.free,
    this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'free': ?free,
      'used': ?used,
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatMemoryUtilizationChart(
      free: (() { final guardedValue = map['free']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      used: (() { final guardedValue = map['used']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
