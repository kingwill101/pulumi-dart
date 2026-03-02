// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCostManagementViewDatasetAggregation {
  /// The name of the column to aggregate. Changing this forces a new Cost Management View for a Subscription to be created.
  final pulumi.Input<String> columnName;
  /// The name which should be used for this aggregation. Changing this forces a new Cost Management View for a Subscription to be created.
  final pulumi.Input<String> name;

  /// Creates a new [SubscriptionCostManagementViewDatasetAggregation].
  /// [columnName] The name of the column to aggregate. Changing this forces a new Cost Management View for a Subscription to be created.
  /// [name] The name which should be used for this aggregation. Changing this forces a new Cost Management View for a Subscription to be created.
  SubscriptionCostManagementViewDatasetAggregation({
    required this.columnName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'name': name,
    };
  }

  factory SubscriptionCostManagementViewDatasetAggregation.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewDatasetAggregation(
      columnName: (map['columnName'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

