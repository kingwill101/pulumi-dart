// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetAreaInitialSorting {
  /// (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  final String direction;
  /// The title of the dashboard.
  final String name;

  /// Creates a new [OneDashboardPageWidgetAreaInitialSorting].
  /// [direction] (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  /// [name] The title of the dashboard.
  OneDashboardPageWidgetAreaInitialSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
    };
  }

  factory OneDashboardPageWidgetAreaInitialSorting.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetAreaInitialSorting(
      direction: map['direction'] as String,
      name: map['name'] as String,
    );
  }
}

