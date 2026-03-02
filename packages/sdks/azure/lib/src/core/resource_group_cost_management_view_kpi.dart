// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceGroupCostManagementViewKpi {
  /// KPI type. Possible values are `Budget` and `Forecast`.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceGroupCostManagementViewKpi].
  /// [type] KPI type. Possible values are `Budget` and `Forecast`.
  ResourceGroupCostManagementViewKpi({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ResourceGroupCostManagementViewKpi.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewKpi(
      type: (map['type'] as String).input(),
    );
  }
}

