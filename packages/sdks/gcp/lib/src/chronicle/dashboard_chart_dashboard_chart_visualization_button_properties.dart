// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationButtonProperties {
  /// Possible values are: `BUTTON_STYLE_UNSPECIFIED`, `BUTTON_STYLE_FILLED`, `BUTTON_STYLE_OUTLINED`, `BUTTON_STYLE_TRANSPARENT`.
  final pulumi.Input<String?>? buttonStyle;
  /// (Optional)
  final pulumi.Input<String?>? color;

  /// Creates a new [DashboardChartDashboardChartVisualizationButtonProperties].
  /// [buttonStyle] Possible values are: `BUTTON_STYLE_UNSPECIFIED`, `BUTTON_STYLE_FILLED`, `BUTTON_STYLE_OUTLINED`, `BUTTON_STYLE_TRANSPARENT`.
  /// [color] (Optional)
  const DashboardChartDashboardChartVisualizationButtonProperties({
    this.buttonStyle,
    this.color,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttonStyle': ?buttonStyle,
      'color': ?color,
    };
  }

  factory DashboardChartDashboardChartVisualizationButtonProperties.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationButtonProperties(
      buttonStyle: (() { final guardedValue = map['buttonStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
