// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'load_balancer_status.dart';

/// ServiceStatus represents the current status of a service.
class ServiceStatus {
  /// Current service state
  final pulumi.Input<List<Condition>>? conditions;
  /// LoadBalancer contains the current status of the load-balancer, if one is present.
  final pulumi.Input<LoadBalancerStatus>? loadBalancer;

  /// Creates a new [ServiceStatus].
  /// [conditions] Current service state
  /// [loadBalancer] LoadBalancer contains the current status of the load-balancer, if one is present.
  const ServiceStatus({
    this.conditions,
    this.loadBalancer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancer': ?pulumi.Input.mapOptionalInputValue<LoadBalancerStatus, Map<String, dynamic>>(loadBalancer, (value) => value.toMap()),
    };
  }

  factory ServiceStatus.fromMap(Map<String, dynamic> map) {
    return ServiceStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancer: (() { final guardedValue = map['loadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

