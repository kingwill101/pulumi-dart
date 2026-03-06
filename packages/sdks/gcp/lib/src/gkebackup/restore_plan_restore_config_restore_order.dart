// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_restore_order_group_kind_dependency.dart';

class RestorePlanRestoreConfigRestoreOrder {
  /// A list of group kind dependency pairs
  /// that is used by Backup for GKE to
  /// generate a group kind restore order.
  /// Structure is documented below.
  final pulumi.Input<List<RestorePlanRestoreConfigRestoreOrderGroupKindDependency>> groupKindDependencies;

  /// Creates a new [RestorePlanRestoreConfigRestoreOrder].
  /// [groupKindDependencies] A list of group kind dependency pairs
  const RestorePlanRestoreConfigRestoreOrder({
    required this.groupKindDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupKindDependencies': pulumi.Input.mapInputValue<List<RestorePlanRestoreConfigRestoreOrderGroupKindDependency>, List<Map<String, dynamic>>>(groupKindDependencies, (value) => pulumi.Input.encodeList<RestorePlanRestoreConfigRestoreOrderGroupKindDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RestorePlanRestoreConfigRestoreOrder.fromMap(Map<String, dynamic> map) {
    return RestorePlanRestoreConfigRestoreOrder(
      groupKindDependencies: pulumi.Input.fromValue(pulumi.Input.decodeList<RestorePlanRestoreConfigRestoreOrderGroupKindDependency>(map['groupKindDependencies']!, (value) => RestorePlanRestoreConfigRestoreOrderGroupKindDependency.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

