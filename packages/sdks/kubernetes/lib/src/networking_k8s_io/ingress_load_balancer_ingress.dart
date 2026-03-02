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
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      ip: map['ip'] == null ? null : (map['ip'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<IngressPortStatus>(map['ports'], (value) => IngressPortStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

