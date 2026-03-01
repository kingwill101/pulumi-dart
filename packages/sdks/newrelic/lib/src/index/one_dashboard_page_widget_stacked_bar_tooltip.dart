// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetStackedBarTooltip {
  /// (Required) The tooltip display mode. Valid values are:
  final String mode;

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
      mode: map['mode'] as String,
    );
  }
}

