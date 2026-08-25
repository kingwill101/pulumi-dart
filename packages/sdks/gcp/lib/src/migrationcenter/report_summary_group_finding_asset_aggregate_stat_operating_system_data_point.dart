// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint {
  /// (Output)
  /// The X-axis label for this data point.
  final pulumi.Input<String?>? label;
  /// (Output)
  /// The Y-axis value for this data point.
  final pulumi.Input<double?>? value;

  /// Creates a new [ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint].
  /// [label] (Output)
  /// [value] (Output)
  const ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint({
    this.label,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'value': ?value,
    };
  }

  factory ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingAssetAggregateStatOperatingSystemDataPoint(
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
