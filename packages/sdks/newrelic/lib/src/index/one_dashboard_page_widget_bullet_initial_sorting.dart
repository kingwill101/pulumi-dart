// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetBulletInitialSorting {
  /// (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  final pulumi.Input<String> direction;
  /// The title of the dashboard.
  final pulumi.Input<String> name;

  /// Creates a new [OneDashboardPageWidgetBulletInitialSorting].
  /// [direction] (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  /// [name] The title of the dashboard.
  OneDashboardPageWidgetBulletInitialSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
    };
  }

  factory OneDashboardPageWidgetBulletInitialSorting.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBulletInitialSorting(
      direction: (map['direction'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

