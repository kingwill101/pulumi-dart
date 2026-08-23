// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGroupCostManagementViewDatasetGrouping {
  /// The name of the column to group.
  final pulumi.Input<String> name;
  /// The type of the column. Possible values are `Dimension` and `TagKey`.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceGroupCostManagementViewDatasetGrouping].
  /// [name] The name of the column to group.
  /// [type] The type of the column. Possible values are `Dimension` and `TagKey`.
  const ResourceGroupCostManagementViewDatasetGrouping({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ResourceGroupCostManagementViewDatasetGrouping.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewDatasetGrouping(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
