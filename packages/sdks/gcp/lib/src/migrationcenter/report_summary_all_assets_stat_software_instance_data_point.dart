// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryAllAssetsStatSoftwareInstanceDataPoint {
  /// (Output)
  /// The X-axis label for this data point.
  final pulumi.Input<String>? label;
  /// (Output)
  /// The Y-axis value for this data point.
  final pulumi.Input<double>? value;

  /// Creates a new [ReportSummaryAllAssetsStatSoftwareInstanceDataPoint].
  /// [label] (Output)
  /// [value] (Output)
  const ReportSummaryAllAssetsStatSoftwareInstanceDataPoint({
    this.label,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'value': ?value,
    };
  }

  factory ReportSummaryAllAssetsStatSoftwareInstanceDataPoint.fromMap(Map<String, dynamic> map) {
    return ReportSummaryAllAssetsStatSoftwareInstanceDataPoint(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
