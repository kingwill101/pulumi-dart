// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'load_balancer_status_patch.dart';

/// ServiceStatus represents the current status of a service.
class ServiceStatusPatch {
  /// Current service state
  final pulumi.Input<List<ConditionPatch>>? conditions;

  /// LoadBalancer contains the current status of the load-balancer, if one is present.
  final pulumi.Input<LoadBalancerStatusPatch>? loadBalancer;

  /// Creates a new [ServiceStatusPatch].
  /// [conditions] Current service state
  /// [loadBalancer] LoadBalancer contains the current status of the load-balancer, if one is present.
  ServiceStatusPatch({this.conditions, this.loadBalancer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConditionPatch>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'loadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            LoadBalancerStatusPatch,
            Map<String, dynamic>
          >(loadBalancer, (value) => value.toMap()),
    };
  }

  factory ServiceStatusPatch.fromMap(Map<String, dynamic> map) {
    return ServiceStatusPatch(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConditionPatch>(
            guardedValue,
            (value) =>
                ConditionPatch.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      loadBalancer: (() {
        final guardedValue = map['loadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LoadBalancerStatusPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
