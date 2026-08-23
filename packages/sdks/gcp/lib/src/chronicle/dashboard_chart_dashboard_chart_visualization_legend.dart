// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationLegend {
  /// (Optional)
  final pulumi.Input<int>? bottom;
  /// (Optional)
  final pulumi.Input<String>? id;
  /// (Optional)
  final pulumi.Input<int>? left;
  /// Possible values are: `AUTO`, `LEFT`, `RIGHT`.
  final pulumi.Input<String>? legendAlign;
  /// Possible values are: `VERTICAL`, `HORIZONTAL`.
  final pulumi.Input<String>? legendOrient;
  /// (Optional)
  final pulumi.Input<List<int>>? paddings;
  /// (Optional)
  final pulumi.Input<int>? right;
  /// (Optional)
  final pulumi.Input<bool>? show;
  /// (Optional)
  final pulumi.Input<int>? top;
  /// (Optional)
  final pulumi.Input<int>? z;
  /// (Optional)
  final pulumi.Input<int>? zLevel;

  /// Creates a new [DashboardChartDashboardChartVisualizationLegend].
  /// [bottom] (Optional)
  /// [id] (Optional)
  /// [left] (Optional)
  /// [legendAlign] Possible values are: `AUTO`, `LEFT`, `RIGHT`.
  /// [legendOrient] Possible values are: `VERTICAL`, `HORIZONTAL`.
  /// [paddings] (Optional)
  /// [right] (Optional)
  /// [show] (Optional)
  /// [top] (Optional)
  /// [z] (Optional)
  /// [zLevel] (Optional)
  const DashboardChartDashboardChartVisualizationLegend({
    this.bottom,
    this.id,
    this.left,
    this.legendAlign,
    this.legendOrient,
    this.paddings,
    this.right,
    this.show,
    this.top,
    this.z,
    this.zLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bottom': ?bottom,
      'id': ?id,
      'left': ?left,
      'legendAlign': ?legendAlign,
      'legendOrient': ?legendOrient,
      'paddings': ?paddings,
      'right': ?right,
      'show': ?show,
      'top': ?top,
      'z': ?z,
      'zLevel': ?zLevel,
    };
  }

  factory DashboardChartDashboardChartVisualizationLegend.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationLegend(
      bottom: (() { final guardedValue = map['bottom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      left: (() { final guardedValue = map['left']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      legendAlign: (() { final guardedValue = map['legendAlign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      legendOrient: (() { final guardedValue = map['legendOrient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paddings: (() { final guardedValue = map['paddings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      right: (() { final guardedValue = map['right']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      show: (() { final guardedValue = map['show']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      z: (() { final guardedValue = map['z']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      zLevel: (() { final guardedValue = map['zLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
