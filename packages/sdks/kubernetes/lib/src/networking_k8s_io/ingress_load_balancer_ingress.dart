// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_port_status.dart';

/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
class IngressLoadBalancerIngress {
  /// hostname is set for load-balancer ingress points that are DNS based.
  final pulumi.Input<String>? hostname;
  /// ip is set for load-balancer ingress points that are IP based.
  final pulumi.Input<String>? ip;
  /// ports provides information about the ports exposed by this LoadBalancer.
  final pulumi.Input<List<IngressPortStatus>>? ports;

  /// Creates a new [IngressLoadBalancerIngress].
  /// [hostname] hostname is set for load-balancer ingress points that are DNS based.
  /// [ip] ip is set for load-balancer ingress points that are IP based.
  /// [ports] ports provides information about the ports exposed by this LoadBalancer.
  IngressLoadBalancerIngress({
    this.hostname,
    this.ip,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ip': ?ip,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<IngressPortStatus>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<IngressPortStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IngressLoadBalancerIngress.fromMap(Map<String, dynamic> map) {
    return IngressLoadBalancerIngress(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IngressPortStatus>(guardedValue, (value) => IngressPortStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

