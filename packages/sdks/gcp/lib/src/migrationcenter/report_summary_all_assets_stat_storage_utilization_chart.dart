// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryAllAssetsStatStorageUtilizationChart {
  /// (Output)
  /// Aggregate value which falls into the "Free" bucket.
  final pulumi.Input<String>? free;
  /// (Output)
  /// Aggregate value which falls into the "Used" bucket.
  final pulumi.Input<String>? used;

  /// Creates a new [ReportSummaryAllAssetsStatStorageUtilizationChart].
  /// [free] (Output)
  /// [used] (Output)
  const ReportSummaryAllAssetsStatStorageUtilizationChart({
    this.free,
    this.used,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'free': ?free,
      'used': ?used,
    };
  }

  factory ReportSummaryAllAssetsStatStorageUtilizationChart.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStatStorageUtilizationChart(
      free: (() { final guardedValue = map['free']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      used: (() { final guardedValue = map['used']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
