// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartVisualizationTooltip {
  /// (Optional)
  final pulumi.Input<bool?>? show;
  /// Possible values are: `TOOLTIP_TRIGGER_UNSPECIFIED`, `TOOLTIP_TRIGGER_NONE`, `TOOLTIP_TRIGGER_ITEM`, `TOOLTIP_TRIGGER_AXIS`.
  final pulumi.Input<String?>? tooltipTrigger;

  /// Creates a new [DashboardChartDashboardChartVisualizationTooltip].
  /// [show] (Optional)
  /// [tooltipTrigger] Possible values are: `TOOLTIP_TRIGGER_UNSPECIFIED`, `TOOLTIP_TRIGGER_NONE`, `TOOLTIP_TRIGGER_ITEM`, `TOOLTIP_TRIGGER_AXIS`.
  const DashboardChartDashboardChartVisualizationTooltip({
    this.show,
    this.tooltipTrigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'show': ?show,
      'tooltipTrigger': ?tooltipTrigger,
    };
  }

  factory DashboardChartDashboardChartVisualizationTooltip.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartVisualizationTooltip(
      show: (() { final guardedValue = map['show']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tooltipTrigger: (() { final guardedValue = map['tooltipTrigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
