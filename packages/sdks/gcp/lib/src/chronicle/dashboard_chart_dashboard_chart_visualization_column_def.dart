// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationColumnDef {
  /// (Optional)
  final pulumi.Input<String?>? field;
  /// (Optional)
  final pulumi.Input<String?>? header;

  /// Creates a new [DashboardChartDashboardChartVisualizationColumnDef].
  /// [field] (Optional)
  /// [header] (Optional)
  const DashboardChartDashboardChartVisualizationColumnDef({
    this.field,
    this.header,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
      'header': ?header,
    };
  }

  factory DashboardChartDashboardChartVisualizationColumnDef.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationColumnDef(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
