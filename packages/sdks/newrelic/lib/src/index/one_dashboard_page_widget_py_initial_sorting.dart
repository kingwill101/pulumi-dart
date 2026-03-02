// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetPyInitialSorting {
  /// (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  final pulumi.Input<String> direction;
  /// The title of the dashboard.
  final pulumi.Input<String> name;

  /// Creates a new [OneDashboardPageWidgetPyInitialSorting].
  /// [direction] (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  /// [name] The title of the dashboard.
  OneDashboardPageWidgetPyInitialSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
    };
  }

  factory OneDashboardPageWidgetPyInitialSorting.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetPyInitialSorting(
      direction: (map['direction'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

