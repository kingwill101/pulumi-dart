// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryAllAssetsStatOperatingSystemDataPoint {
  /// (Output)
  /// The X-axis label for this data point.
  final pulumi.Input<String>? label;
  /// (Output)
  /// The Y-axis value for this data point.
  final pulumi.Input<double>? value;

  /// Creates a new [ReportSummaryAllAssetsStatOperatingSystemDataPoint].
  /// [label] (Output)
  /// [value] (Output)
  const ReportSummaryAllAssetsStatOperatingSystemDataPoint({
    this.label,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'value': ?value,
    };
  }

  factory ReportSummaryAllAssetsStatOperatingSystemDataPoint.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStatOperatingSystemDataPoint(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
