// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetsExportJobPerformanceData {
  /// When this value is set to a positive integer,
  /// performance data will be returned for the most recent days
  /// for which data is available. When this value is unset (or set to zero),
  /// all available data is returned.
  /// The maximum value is 420; values above 420 will be coerced to 420.
  /// If unset (0 value) a default value of 40 will be used.
  final pulumi.Input<int>? maxDays;

  /// Creates a new [AssetsExportJobPerformanceData].
  /// [maxDays] When this value is set to a positive integer,
  const AssetsExportJobPerformanceData({
    this.maxDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDays': ?maxDays,
    };
  }

  factory AssetsExportJobPerformanceData.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobPerformanceData(
      maxDays: (() { final guardedValue = map['maxDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
