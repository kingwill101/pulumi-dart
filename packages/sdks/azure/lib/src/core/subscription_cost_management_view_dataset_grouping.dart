// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionCostManagementViewDatasetGrouping {
  /// The name of the column to group.
  final String name;
  /// The type of the column. Possible values are `Dimension` and `TagKey`.
  final String type;

  /// Creates a new [SubscriptionCostManagementViewDatasetGrouping].
  /// [name] The name of the column to group.
  /// [type] The type of the column. Possible values are `Dimension` and `TagKey`.
  SubscriptionCostManagementViewDatasetGrouping({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory SubscriptionCostManagementViewDatasetGrouping.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewDatasetGrouping(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

