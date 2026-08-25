// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationVisualMapPiece {
  /// (Optional)
  final pulumi.Input<String?>? color;
  /// (Optional)
  final pulumi.Input<String?>? label;
  /// (Optional)
  final pulumi.Input<int?>? max;
  /// (Optional)
  final pulumi.Input<int?>? min;

  /// Creates a new [DashboardChartDashboardChartVisualizationVisualMapPiece].
  /// [color] (Optional)
  /// [label] (Optional)
  /// [max] (Optional)
  /// [min] (Optional)
  const DashboardChartDashboardChartVisualizationVisualMapPiece({
    this.color,
    this.label,
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'label': ?label,
      'max': ?max,
      'min': ?min,
    };
  }

  factory DashboardChartDashboardChartVisualizationVisualMapPiece.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationVisualMapPiece(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
