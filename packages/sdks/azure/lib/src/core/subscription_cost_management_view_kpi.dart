// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCostManagementViewKpi {
  /// KPI type. Possible values are `Budget` and `Forecast`.
  final pulumi.Input<String> type;

  /// Creates a new [SubscriptionCostManagementViewKpi].
  /// [type] KPI type. Possible values are `Budget` and `Forecast`.
  SubscriptionCostManagementViewKpi({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory SubscriptionCostManagementViewKpi.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewKpi(
      type: (map['type'] as String).input(),
    );
  }
}

