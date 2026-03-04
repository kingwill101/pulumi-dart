// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_plan_restore_config_restore_order_group_kind_dependency_requiring.dart';
import 'restore_plan_restore_config_restore_order_group_kind_dependency_satisfying.dart';

class RestorePlanRestoreConfigRestoreOrderGroupKindDependency {
  /// The requiring group kind requires that the satisfying
  /// group kind be restored first.
  /// Structure is documented below.
  final pulumi.Input<
    RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiring
  >
  requiring;

  /// The satisfying group kind must be restored first
  /// in order to satisfy the dependency.
  /// Structure is documented below.
  final pulumi.Input<
    RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying
  >
  satisfying;

  /// Creates a new [RestorePlanRestoreConfigRestoreOrderGroupKindDependency].
  /// [requiring] The requiring group kind requires that the satisfying
  /// [satisfying] The satisfying group kind must be restored first
  RestorePlanRestoreConfigRestoreOrderGroupKindDependency({
    required this.requiring,
    required this.satisfying,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiring':
          pulumi.Input.mapInputValue<
            RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiring,
            Map<String, dynamic>
          >(requiring, (value) => value.toMap()),
      'satisfying':
          pulumi.Input.mapInputValue<
            RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying,
            Map<String, dynamic>
          >(satisfying, (value) => value.toMap()),
    };
  }

  factory RestorePlanRestoreConfigRestoreOrderGroupKindDependency.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestorePlanRestoreConfigRestoreOrderGroupKindDependency(
      requiring: pulumi.Input.fromValue(
        RestorePlanRestoreConfigRestoreOrderGroupKindDependencyRequiring.fromMap(
          (map['requiring']! as Map).cast<String, dynamic>(),
        ),
      ),
      satisfying: pulumi.Input.fromValue(
        RestorePlanRestoreConfigRestoreOrderGroupKindDependencySatisfying.fromMap(
          (map['satisfying']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
