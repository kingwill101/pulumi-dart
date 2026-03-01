// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetBarInitialSorting {
  /// (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  final String direction;
  /// The title of the dashboard.
  final String name;

  /// Creates a new [OneDashboardPageWidgetBarInitialSorting].
  /// [direction] (Required) Defines the sort order. Accepted values are `asc` for ascending or `desc` for descending.
  /// [name] The title of the dashboard.
  OneDashboardPageWidgetBarInitialSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
    };
  }

  factory OneDashboardPageWidgetBarInitialSorting.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBarInitialSorting(
      direction: map['direction'] as String,
      name: map['name'] as String,
    );
  }
}

