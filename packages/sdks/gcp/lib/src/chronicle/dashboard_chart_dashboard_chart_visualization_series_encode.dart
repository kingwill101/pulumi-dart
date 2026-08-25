// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationSeriesEncode {
  /// (Optional)
  final pulumi.Input<String?>? itemName;
  /// (Optional)
  final pulumi.Input<String?>? value;
  /// (Optional)
  final pulumi.Input<String?>? x;
  /// (Optional)
  final pulumi.Input<String?>? y;

  /// Creates a new [DashboardChartDashboardChartVisualizationSeriesEncode].
  /// [itemName] (Optional)
  /// [value] (Optional)
  /// [x] (Optional)
  /// [y] (Optional)
  const DashboardChartDashboardChartVisualizationSeriesEncode({
    this.itemName,
    this.value,
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'itemName': ?itemName,
      'value': ?value,
      'x': ?x,
      'y': ?y,
    };
  }

  factory DashboardChartDashboardChartVisualizationSeriesEncode.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationSeriesEncode(
      itemName: (() { final guardedValue = map['itemName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
