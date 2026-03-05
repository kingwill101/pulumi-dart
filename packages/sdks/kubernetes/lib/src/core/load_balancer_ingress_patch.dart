// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_status_patch.dart';

/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
class LoadBalancerIngressPatch {
  /// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  final pulumi.Input<String>? hostname;
  /// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  final pulumi.Input<String>? ip;
  /// IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip field is specified. Setting this to "VIP" indicates that traffic is delivered to the node with the destination set to the load-balancer's IP and port. Setting this to "Proxy" indicates that traffic is delivered to the node or pod with the destination set to the node's IP and node port or the pod's IP and port. Service implementations may use this information to adjust traffic routing.
  final pulumi.Input<String>? ipMode;
  /// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
  final pulumi.Input<List<PortStatusPatch>>? ports;

  /// Creates a new [LoadBalancerIngressPatch].
  /// [hostname] Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  /// [ip] IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  /// [ipMode] IPMode specifies how the load-balancer IP behaves, and may only be specified when the ip field is specified. Setting this to "VIP" indicates that traffic is delivered to the node with the destination set to the load-balancer's IP and port. Setting this to "Proxy" indicates that traffic is delivered to the node or pod with the destination set to the node's IP and node port or the pod's IP and port. Service implementations may use this information to adjust traffic routing.
  /// [ports] Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
  LoadBalancerIngressPatch({
    this.hostname,
    this.ip,
    this.ipMode,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'ip': ?ip,
      'ipMode': ?ipMode,
      'ports': ?pulumi.Input.mapOptionalInputValue<List<PortStatusPatch>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<PortStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LoadBalancerIngressPatch.fromMap(Map<String, dynamic> map) {
    return LoadBalancerIngressPatch(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipMode: (() { final guardedValue = map['ipMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortStatusPatch>(guardedValue, (value) => PortStatusPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

