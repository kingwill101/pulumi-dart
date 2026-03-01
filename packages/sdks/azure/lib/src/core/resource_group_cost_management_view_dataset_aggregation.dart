// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupCostManagementViewDatasetAggregation {
  /// The name of the column to aggregate. Changing this forces a new Cost Management View for a Resource Group to be created.
  final String columnName;
  /// The name which should be used for this aggregation. Changing this forces a new Cost Management View for a Resource Group to be created.
  final String name;

  /// Creates a new [ResourceGroupCostManagementViewDatasetAggregation].
  /// [columnName] The name of the column to aggregate. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [name] The name which should be used for this aggregation. Changing this forces a new Cost Management View for a Resource Group to be created.
  ResourceGroupCostManagementViewDatasetAggregation({
    required this.columnName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'name': name,
    };
  }

  factory ResourceGroupCostManagementViewDatasetAggregation.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewDatasetAggregation(
      columnName: map['columnName'] as String,
      name: map['name'] as String,
    );
  }
}

