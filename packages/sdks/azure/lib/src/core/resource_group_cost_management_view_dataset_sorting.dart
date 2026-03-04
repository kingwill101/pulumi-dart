// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGroupCostManagementViewDatasetSorting {
  /// Direction of sort. Possible values are `Ascending` and `Descending`.
  final pulumi.Input<String> direction;

  /// The name of the column to sort.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceGroupCostManagementViewDatasetSorting].
  /// [direction] Direction of sort. Possible values are `Ascending` and `Descending`.
  /// [name] The name of the column to sort.
  ResourceGroupCostManagementViewDatasetSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'direction': direction, 'name': name};
  }

  factory ResourceGroupCostManagementViewDatasetSorting.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceGroupCostManagementViewDatasetSorting(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
