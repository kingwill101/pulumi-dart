// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetStackedBarTooltip {
  /// (Required) The tooltip display mode. Valid values are:
  final pulumi.Input<String> mode;

  /// Creates a new [OneDashboardPageWidgetStackedBarTooltip].
  /// [mode] (Required) The tooltip display mode. Valid values are:
  OneDashboardPageWidgetStackedBarTooltip({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory OneDashboardPageWidgetStackedBarTooltip.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetStackedBarTooltip(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

