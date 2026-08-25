// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings {
  /// (Optional)
  final pulumi.Input<String?>? color;
  /// Possible values are: `POINT_SIZE_TYPE_UNSPECIFIED`, `POINT_SIZE_TYPE_FIXED`, `POINT_SIZE_TYPE_PROPORTIONAL_TO_SIZE`.
  final pulumi.Input<String?>? pointSizeType;

  /// Creates a new [DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings].
  /// [color] (Optional)
  /// [pointSizeType] Possible values are: `POINT_SIZE_TYPE_UNSPECIFIED`, `POINT_SIZE_TYPE_FIXED`, `POINT_SIZE_TYPE_PROPORTIONAL_TO_SIZE`.
  const DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings({
    this.color,
    this.pointSizeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'color': ?color,
      'pointSizeType': ?pointSizeType,
    };
  }

  factory DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationGoogleMapsConfigPointSettings(
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointSizeType: (() { final guardedValue = map['pointSizeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
