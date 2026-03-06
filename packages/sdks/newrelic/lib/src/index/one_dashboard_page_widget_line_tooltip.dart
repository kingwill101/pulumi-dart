// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetLineTooltip {
  /// (Required) The tooltip display mode. Valid values are:
  final pulumi.Input<String> mode;

  /// Creates a new [OneDashboardPageWidgetLineTooltip].
  /// [mode] (Required) The tooltip display mode. Valid values are:
  const OneDashboardPageWidgetLineTooltip({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory OneDashboardPageWidgetLineTooltip.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLineTooltip(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

