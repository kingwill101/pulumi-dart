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
  ServiceStatusPatch({
    this.conditions,
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStatusPatch, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
    };
  }

  factory ServiceStatusPatch.fromMap(Map<String, dynamic> map) {
    return ServiceStatusPatch(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionPatch>(map['conditions'], (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancer: map['loadBalancer'] == null ? null : (LoadBalancerStatusPatch.fromMap((map['loadBalancer'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

