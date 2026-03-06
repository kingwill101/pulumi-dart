// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGroupCostManagementViewDatasetAggregation {
  /// The name of the column to aggregate. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<String> columnName;
  /// The name which should be used for this aggregation. Changing this forces a new Cost Management View for a Resource Group to be created.
  final pulumi.Input<String> name;

  /// Creates a new [ResourceGroupCostManagementViewDatasetAggregation].
  /// [columnName] The name of the column to aggregate. Changing this forces a new Cost Management View for a Resource Group to be created.
  /// [name] The name which should be used for this aggregation. Changing this forces a new Cost Management View for a Resource Group to be created.
  const ResourceGroupCostManagementViewDatasetAggregation({
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
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

