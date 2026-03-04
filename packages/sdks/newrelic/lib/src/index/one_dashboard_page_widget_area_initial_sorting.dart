// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetAreaInitialSorting {
  /// (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  final pulumi.Input<String> direction;

  /// The title of the dashboard.
  final pulumi.Input<String> name;

  /// Creates a new [OneDashboardPageWidgetAreaInitialSorting].
  /// [direction] (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  /// [name] The title of the dashboard.
  OneDashboardPageWidgetAreaInitialSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': direction, 'name': name};
  }

  factory OneDashboardPageWidgetAreaInitialSorting.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetAreaInitialSorting(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
