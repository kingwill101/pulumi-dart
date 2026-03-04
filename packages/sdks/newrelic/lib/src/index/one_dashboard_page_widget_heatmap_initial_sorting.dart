// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetHeatmapInitialSorting {
  /// (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  final pulumi.Input<String> direction;

  /// The title of the dashboard.
  final pulumi.Input<String> name;

  /// Creates a new [OneDashboardPageWidgetHeatmapInitialSorting].
  /// [direction] (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  /// [name] The title of the dashboard.
  OneDashboardPageWidgetHeatmapInitialSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': direction, 'name': name};
  }

  factory OneDashboardPageWidgetHeatmapInitialSorting.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetHeatmapInitialSorting(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
