// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCostManagementViewPivot {
  /// The name of the column which should be used for this sub-view in the Cost Analysis UI.
  final pulumi.Input<String> name;

  /// The data type to show in this sub-view. Possible values are `Dimension` and `TagKey`.
  final pulumi.Input<String> type;

  /// Creates a new [SubscriptionCostManagementViewPivot].
  /// [name] The name of the column which should be used for this sub-view in the Cost Analysis UI.
  /// [type] The data type to show in this sub-view. Possible values are `Dimension` and `TagKey`.
  SubscriptionCostManagementViewPivot({required this.name, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': type};
  }

  factory SubscriptionCostManagementViewPivot.fromMap(
    Map<String, dynamic> map,
  ) {
    return SubscriptionCostManagementViewPivot(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
